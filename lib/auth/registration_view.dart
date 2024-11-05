import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiktok_clone/Utills/components/primary_button.dart';
import 'package:tiktok_clone/Utills/components/vertical_spacing.dart';
import 'package:tiktok_clone/auth/login_view.dart';

class RegistrationView extends StatefulWidget {
  const RegistrationView({super.key});

  @override
  State<RegistrationView> createState() => _RegistrationViewState();
}

class _RegistrationViewState extends State<RegistrationView> {
  var nameController = TextEditingController();
  var passwordController = TextEditingController();

  var emailController = TextEditingController();
  var confromPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
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
                  "User Name*",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    fillColor: Colors.white,
                    filled: true),
              ),
              const VerticalSpacing(
                height: 16,
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
              const VerticalSpacing(
                height: 16,
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
                    filled: true),
              ),
              const VerticalSpacing(
                height: 16,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Confrom Password*",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextField(
                controller: confromPasswordController,
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    fillColor: Colors.white,
                    filled: true),
              ),
              const VerticalSpacing(height: 40),
              PrimaryButton(title: "SignUp", onTap: () {}),
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
                  const SizedBox(
                    width: 6,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(
                        const LoginView(),
                      );
                    },
                    child: const Text(
                      "Login",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
