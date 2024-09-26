import 'package:flutter/material.dart';
import 'package:lab_2/themes/custom_theme.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const BarberShopApp());
}


class BarberShopApp extends StatelessWidget {
  const BarberShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Barbershop",
      home: const HomeScreen(),
      theme: CustomTheme.theme(),
    );
  }
}
