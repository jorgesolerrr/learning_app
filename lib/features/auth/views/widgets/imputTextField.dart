import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class InputTextField extends StatelessWidget {
  final TextEditingController textController;
  final String field;

  const InputTextField(
      {super.key, required this.textController, required this.field});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(field,
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.w600,
          )),
      const SizedBox(height: 3),
      Container(
        height: 50,
        decoration: BoxDecoration(
              color: const Color.fromARGB(255, 238, 243, 253),
              borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Center(
          child: TextFormField(
                  controller: textController,
                  cursorColor: Color.fromARGB(255, 75, 73, 73),
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 238, 243, 253),
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      gapPadding: 2 
                    ),
                    contentPadding: EdgeInsets.all(5),
                    hoverColor: Color.fromARGB(255, 75, 73, 73),
                    focusColor: Color.fromARGB(255, 75, 73, 73),
                  ))))
    ]);
  }
}

class InputPasswordField extends StatefulWidget {
  final TextEditingController textController;

  const InputPasswordField({super.key, required this.textController});

  @override
  State<StatefulWidget> createState() => _InputPasswordFieldState();
}

class _InputPasswordFieldState extends State<InputPasswordField> {
  bool obs = true;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Text("Password",
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.w600,
          )),
      const SizedBox(height: 3),
      Container(
        height: 50,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 238, 243, 253),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Center(
          child: TextFormField(
                obscuringCharacter: "*",
                keyboardType: TextInputType.visiblePassword,
                obscureText: obs,
                controller: widget.textController,
                cursorColor: const Color.fromARGB(255, 75, 73, 73),
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        obs = !obs;
                      });
                    },
                    icon: Icon(obs
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined),
                    color: Colors.black,
                  ),
                  fillColor: const Color.fromARGB(255, 238, 243, 253),
                  filled: true,
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  contentPadding: EdgeInsets.all(5),
                  hoverColor: const Color.fromARGB(255, 75, 73, 73),
                  focusColor: const Color.fromARGB(255, 75, 73, 73),
                ))
        ),
      )
    ]);
  }
}
