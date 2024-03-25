import 'package:flutter/material.dart';

import 'sign_up_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 1.6,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 1.6,
                      decoration: BoxDecoration(
                          color: Colors.blue[700],
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(60),
                              bottomRight: Radius.circular(60))),
                      child: Center(
                        child: Image.asset(
                          "images/books.png",
                          scale: 0.8,
                        ),
                      ))
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.666,
                  padding: EdgeInsets.only(top: 40, bottom: 30),
                  child: Column(
                    children: [
                      const Text(
                        "Learning is Everything",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            wordSpacing: 2),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                            "Learning with Pleasure with Datosol, wherever you are.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.black.withOpacity(0.6)),
                          )),
                      const SizedBox(height: 30),
                      Material(
                        color: Colors.blue[700],
                        borderRadius: BorderRadius.circular(40),
                        child: InkWell(
                          onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                            SignUpScreen()),
                                );
                              },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 80),
                            child: const Text(
                              "Let's Get Starter",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1),
                            ),
                          )
                        )
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child : Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Already have an account?",
                                style: TextStyle(
                                    fontSize: 17,
                                )
                              ),
                              TextButton(
                                onPressed: () {}, 
                                child: Text (
                                  "Sign in",
                                  style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.blue[700]
                                      )
                                ),
                              )
                            ]
                            )
                          )
                        ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
