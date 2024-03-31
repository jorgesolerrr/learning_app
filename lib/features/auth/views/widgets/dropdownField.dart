import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_app/features/auth/controller/auth_controller.dart';

class DropdownLMSField extends GetWidget<AuthController> {
  const DropdownLMSField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [ 
        const Text("LMS",
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.w600,
          )),
        const SizedBox(height: 3),
        Container(
        margin: EdgeInsets.zero,
        height: 50,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 238, 243, 253),
          borderRadius: BorderRadius.all(Radius.circular(10))
          ),
        child: Center(
          child: DropdownButtonFormField(
                padding: EdgeInsets.all(5),
                decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Choose your LMS",
                    hintStyle: TextStyle(
                      color: Colors.black.withOpacity(0.4),
                      fontSize: 13
                      ),
                    contentPadding: EdgeInsets.all(5)),
                items: controller.currentLMS.map((String item) {
                  return DropdownMenuItem(value: item, child: Text(item));
                }).toList(),
                onChanged: (value) {
                  controller.setSelected(value!);
                }),
          )
      )]);
  }
}
