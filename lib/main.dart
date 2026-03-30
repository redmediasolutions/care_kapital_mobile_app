//import 'package:care_kapital_mobile_app/pages/homepage/homepage.dart';
import 'package:care_kapital_mobile_app/pages/investments/investments.dart';
import 'package:care_kapital_mobile_app/pages/payments/payments.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Investments(),
    );
  }
} 
