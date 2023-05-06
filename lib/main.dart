import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:car_app_info/provider/data.dart';
import 'package:car_app_info/screen/car_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
          create: (context) => Data(), child: const CarScreen()),
    );
  }
}
