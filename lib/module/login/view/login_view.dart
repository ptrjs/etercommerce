import 'package:flutter/material.dart';
import 'package:etercommerce/core.dart';
import 'package:etercommerce/shared/widget/app_logo/app_logo.dart';
import '../controller/login_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  Widget build(context, LoginController controller) {
    controller.view = this;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome\nto EterCommerce",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        Text(
                          "All Stuff Available",
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  AppLogo(),
                ],
              ),
              Spacer(),
              QTextField(
                label: "Email",
                validator: Validator.email,
                suffixIcon: Icons.email,
                onChanged: (value) {},
              ),
              QTextField(
                label: "Password",
                obscure: true,
                validator: Validator.required,
                suffixIcon: Icons.password,
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 8.0,
              ),
              QButton(
                label: "Login",
                onPressed: () => controller.doLogin(),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Text(
                "Forgot Password?",
                style: TextStyle(
                  fontSize: 14.0,
                  color: primaryColor,
                ),
              ),
              Spacer(),
              QButton(
                label: "Sign Up",
                color: Colors.grey,
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LoginView> createState() => LoginController();
}
