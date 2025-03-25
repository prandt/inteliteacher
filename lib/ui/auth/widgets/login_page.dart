import 'package:flutter/material.dart';
import 'package:inteliteacher/config/theme.dart';

enum LoginPageSteps { email, password, login }

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginPageSteps step = LoginPageSteps.email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: AppPadding.allLarge,
          child: Column(
            spacing: 24,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Seja bem-vindo!",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppColors.periwinkle)),
              if (step == LoginPageSteps.email)
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "E-mail",
                    hintText: "Digite seu e-mail",
                  ),
                )
              else if (step == LoginPageSteps.password)
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Senha",
                    hintText: "Digite sua senha",
                  ),
                ),
              IconButton.outlined(
                color: AppColors.tropicalIndigo,
                  onPressed: () {
                    setState(() {
                      if (step == LoginPageSteps.email) {
                        step = LoginPageSteps.password;
                      } else if (step == LoginPageSteps.password) {
                        step = LoginPageSteps.login;
                      }
                    });
                  },
                  icon: Icon(Icons.arrow_forward)),
            ],
          ),
        ),
      )),
    );
  }
}
