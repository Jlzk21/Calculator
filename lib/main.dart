import 'package:flutter/material.dart';
import 'package:calculator/calculator.dart';

void main() {
  runApp(MaterialApp(
    home: const CalculatorApp(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(useMaterial3: true),
  ));
}