import 'package:care_kapital_mobile_app/navigation/nav.dart';
import 'package:care_kapital_mobile_app/pages/homepage/homepage.dart';
import 'package:care_kapital_mobile_app/pages/profile/profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      theme: ThemeData()
    );
  }
}
