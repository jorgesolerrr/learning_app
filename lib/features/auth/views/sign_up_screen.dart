import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/pages.dart';
import '../controller/auth_controller.dart';
import 'widgets/dropdownField.dart';
import 'widgets/imputTextField.dart';
import 'widgets/submitButton.dart';

class SignUpView extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  "Create Account",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w900),
                ),
              ),
              const SizedBox(height: 15),
              Center(
                  child: Text(
                "Fill your information bellow",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15, color: Colors.black.withOpacity(0.6)),
              )),
              const SizedBox(height: 50),
              DropdownLMSField(),
              const SizedBox(height: 20),
              InputTextField(
                  textController: controller.usernameController, field: "Username"),
              const SizedBox(height: 20),
              InputTextField(
                  textController: controller.emailController, field: "Email"),
              const SizedBox(height: 20),
              InputPasswordField(textController: controller.passwordController),
              const SizedBox(height: 20),
              SubmitButton(type: "Sign Up"),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(fontSize: 15),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.toNamed(Routes.AUTH_SIGNIN);
                    },
                    child: Text("Sign In",
                        style:
                            TextStyle(fontSize: 15, color: Colors.blue[300])),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
