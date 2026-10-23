import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Binding/initialbindings.dart';
import 'view/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Match Game',
      initialBinding: InitialBindings(),
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}
