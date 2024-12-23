import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learningdart/currency_converter.dart';
import 'package:learningdart/currency_converter_cupertino.dart';

void main() {
  runApp(const NewMyApp());
}

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CurrencyConverterCupertinoPage(),
    );
  }
}

class NewMyApp extends StatelessWidget {
  const NewMyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyConverter(),
    );
  }
}
