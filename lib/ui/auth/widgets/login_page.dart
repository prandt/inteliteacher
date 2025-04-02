import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inteliteacher/config/theme.dart';
import 'package:inteliteacher/shared/widgets/custom_text_button.dart';
import 'package:inteliteacher/shared/widgets/custom_text_field.dart';
import 'package:inteliteacher/ui/auth/view_models/login_viewmodel.dart';

import '../../../config/router.dart';
import '../../../data/services/dtos/login_dto.dart';
import '../../../shared/widgets/app_logo.dart';
import 'create_account_card.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.viewModel});

  final LoginViewModel viewModel;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginViewModel get viewModel => widget.viewModel;
  final formKey = GlobalKey<FormState>();
  final loginDto = LoginDTO();
  final loginValidator = LoginValidator();

  @override
  void initState() {
    super.initState();
    viewModel.login.addListener(_listenLogin);
  }

  void _listenLogin() {
    if (viewModel.login.isRunning) {
      // TODO: Show loading indicator
    }
    if (viewModel.login.isFailure) {
      // TODO: Show error message
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
                  CustomTextField(
                    label: "E-mail",
                    hint: "Digite seu e-mail",
                    keyboardType: TextInputType.emailAddress,
                    onChanged: loginDto.setEmail,
                    validator: loginValidator.byField(loginDto, 'email'),
                  ),
                  CustomTextField(
                      label: "Senha",
                      hint: "Digite sua senha",
                      isPassword: true,
                      keyboardType: TextInputType.visiblePassword,
                      onChanged: loginDto.setPassword,
                      validator: loginValidator.byField(loginDto, 'password')),
                  ListenableBuilder(
                      listenable: loginDto,
                      builder: (context, _) {
                        return IconButton.outlined(
                            color: AppColors.tropicalIndigo,
                            onPressed: loginValidator.validate(loginDto).isValid
                                ? login
                                : null,
                            icon: Icon(Icons.arrow_forward));
                      }),
                  CustomTextButton(
                    label: "Esqueci minha senha",
                    onPressed: () {},
                  ),
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
    viewModel.login.execute(loginDto);
  }
}
