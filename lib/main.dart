import 'package:flutter/material.dart';
//import 'package:kajian_sunnah/features/login/presentation/pages/register.dart';
import 'package:kajian_sunnah/features/login/presentation/pages/login.dart';
//import 'package:kajian_sunnah/features/login/presentation/pages/initial.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
