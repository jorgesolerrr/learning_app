import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_app/features/auth/controller/auth_controller.dart';

class SubmitButton extends GetWidget<AuthController> {
  final String type;

  const SubmitButton({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)),
          child: Text(
            type,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
          ),
      ),
    );
  }
}
