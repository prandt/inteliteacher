import 'package:flutter/material.dart';
import 'package:inteliteacher/config/router.dart';
import 'package:inteliteacher/model/auth/validators/register_validator.dart';
import 'package:inteliteacher/shared/widgets/custom_back_button.dart';

import '../../../config/theme.dart';
import '../../../shared/widgets/app_logo.dart';
import '../../../shared/widgets/custom_text_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final formKey = GlobalKey<FormState>();
  final validator = RegisterValidator();

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
                  Text("Crie sua conta",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: AppColors.periwinkle)),
                  CustomTextField(
                    label: "E-mail",
                    hint: "Digite seu e-mail",
                    keyboardType: TextInputType.emailAddress,
                    onChanged: validator.setEmail,
                    validator: validator.field('email'),
                  ),
                  CustomTextField(
                      label: "Senha",
                      hint: "Digite sua senha",
                      isPassword: true,
                      keyboardType: TextInputType.visiblePassword,
                      onChanged: validator.setPassword,
                      validator: validator.field('password')),
                  CustomTextField(
                      label: "Confirmação de senha",
                      hint: "Digite sua senha novamente",
                      isPassword: true,
                      keyboardType: TextInputType.visiblePassword,
                      onChanged: validator.setConfirmPassword,
                      validator: validator.field('confirmPassword')),
                  ListenableBuilder(
                      listenable: validator,
                      builder: (context, _) {
                        return SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: validator.isValid ? register : null,
                              child: Text("Registrar")),
                        );
                      }),
                  CustomBackButton(
                    isInfinite: true,
                    routeName: Routes.login,
                  )
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }

  void register() {}
}
