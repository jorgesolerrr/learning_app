import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_app/routes/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
