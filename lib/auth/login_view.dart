import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiktok_clone/Utills/components/primary_button.dart';
import 'package:tiktok_clone/Utills/components/vertical_spacing.dart';
import 'package:tiktok_clone/auth/registration_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "Logo",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Email*",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      fillColor: Colors.white,
                      filled: true),
                ),
                const SizedBox(
                  height: 12,
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Password*",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  controller: passwordController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                const VerticalSpacing(height: 100),
                PrimaryButton(
                  title: "Login",
                  onTap: () {},
                ),
                const VerticalSpacing(height: 16),
                const Text(
                  "Or",
                  style: TextStyle(fontSize: 16),
                ),
                const VerticalSpacing(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don,t have accout?",
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(),
                    InkWell(
                      onTap: () {
                        Get.to(
                          const RegistrationView(),
                        );
                      },
                      child: const Text(
                        "SignUp",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
