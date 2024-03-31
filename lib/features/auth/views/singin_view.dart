import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:learning_app/features/auth/views/widgets/dropdownField.dart';
import 'package:learning_app/features/auth/views/widgets/imputTextField.dart';
import 'package:learning_app/features/auth/views/widgets/submitButton.dart';

import '../../../routes/pages.dart';
import '../controller/auth_controller.dart';

class SiginView extends GetView<AuthController> {
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
                  "Sign In",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w900),
                ),
              ),
              const SizedBox(height: 15),
              Center(
                  child: Text(
                "Hi! Welcome back, you've been missed",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15, color: Colors.black.withOpacity(0.6)),
              )),
              const SizedBox(height: 60),
              DropdownLMSField(),
              const SizedBox(height: 25),
              InputTextField(
                  textController: controller.emailController, field: "Username"),
              const SizedBox(height: 25),
              InputPasswordField(textController: controller.passwordController),
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.blue)),
                      onPressed: () {},
                      child: Text(
                        "Forgot Password?",
                        textAlign: TextAlign.end,
                        style: TextStyle(color: Colors.blue[300]),
                      ))),
              const SizedBox(height: 25),
              SubmitButton(type: "Sign In"),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account",
                    style: TextStyle(
                      fontSize: 15
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.toNamed(Routes.AUTH_SIGNUP);
                    },
                    child: Text("Sign Up",
                    style: TextStyle(
                          fontSize: 15,
                          color: Colors.blue[300])),
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
