import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inteliteacher/config/injector.dart';
import 'package:inteliteacher/config/theme.dart';
import 'package:inteliteacher/shared/loading_overlay.dart';
import 'package:inteliteacher/shared/widgets/custom_text_field.dart';
import 'package:inteliteacher/ui/auth/view_models/login_viewmodel.dart';
import 'package:result_command/result_command.dart';
import '../../../config/router.dart';
import '../../../data/execptions/app_exceptions.dart';
import '../../../model/auth/validators/login_validator.dart';
import '../../../shared/widgets/app_logo.dart';
import 'create_account_card.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    super.key,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final LoginViewModel viewModel = injector.get();
  final formKey = GlobalKey<FormState>();
  final loginValidator = LoginValidator();

  @override
  void initState() {
    super.initState();
    viewModel.login.addListener(_listenLogin);
  }

  void _listenLogin() {
    LoadingOverlay.instance().hide();
    if (viewModel.login.isRunning) {
      LoadingOverlay.instance().show(context, text: "Entrando...");
    }
    if (viewModel.login.isFailure) {
      final failure = viewModel.login.value as FailureCommand;
      final exception = failure.error;
      debugPrint("Login error: ${exception.runtimeType}");
      if (exception is AuthException) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(exception.message, textAlign: TextAlign.center),
            backgroundColor: AppColors.redAlert,
          ),
        );
        return;
      }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Erro ao fazer login"),
        ),
      );
    }
    if (viewModel.login.isSuccess) {
      context.go(Routes.home);
    }
  }

  @override
  void dispose() {
    super.dispose();
    viewModel.login.removeListener(_listenLogin);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: AppPadding.allLarge,
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                spacing: 24,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const AppLogo(),
                  Text("Seja bem-vindo!",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: AppColors.periwinkle)),
                  Text("Entre com sua conta"),
                  CustomTextField(
                    label: "E-mail",
                    hint: "Digite seu e-mail",
                    keyboardType: TextInputType.emailAddress,
                    onChanged: loginValidator.setEmail,
                    validator: loginValidator.field('email'),
                  ),
                  CustomTextField(
                      label: "Senha",
                      hint: "Digite sua senha",
                      isPassword: true,
                      keyboardType: TextInputType.visiblePassword,
                      onChanged: loginValidator.setPassword,
                      validator: loginValidator.field('password')),
                  ListenableBuilder(
                      listenable: loginValidator,
                      builder: (context, _) {
                        return SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: loginValidator.isValid ? login : null,
                              child: Text("Entrar")),
                        );
                      }),
                ],
              ),
            ),
          ),
        ),
      )),
      bottomSheet: MediaQuery.of(context).viewInsets.bottom == 0
          ? const CreateAccountCard()
          : const SizedBox.shrink(),
    );
  }

  void login() {
    if (!formKey.currentState!.validate()) {
      return;
    }
    viewModel.login.execute(loginValidator);
  }
}
