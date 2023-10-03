import 'package:flutter/material.dart';

import 'package:bank_sampahad/Pages/Login/loginMenu.dart';
import 'package:bank_sampahad/Pages/Login/loginMenu1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: BarNavigationPenimbang(),
      //home: RegistrasiNasabah(),
      //home: KapasiatasSampah(),
      home: loginMenu1(),
    );
  }
}
