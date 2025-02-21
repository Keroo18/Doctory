import 'package:flutter/material.dart';

void main() {
  runApp(const Doctory());
}

class Doctory extends StatelessWidget {
  const Doctory({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Doctory"),
            centerTitle: true,
          ),
          body: const Center()),
    );
  }
}
