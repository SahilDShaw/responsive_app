import 'package:flutter/material.dart';
import 'package:responsive_app/card_1.dart';
import 'package:responsive_app/card_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Responsive Cards'),
        ),
        body: const Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Card1(),
              SizedBox(
                height: 20,
              ),
              Card2(),
            ],
          ),
        ),
      ),
    );
  }
}
