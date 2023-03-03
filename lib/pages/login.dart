import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final int age;
  final String name;

  const LoginPage({super.key, required this.name, required this.age});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String yosh = "Ko`palay";
  int age = 324;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context, yosh);
        },
        child: const Icon(Icons.accessibility_rounded),
      ),
      body: Center(
        child: Text("${widget.name} age ${widget.age}"),
      ),
    );
  }
}
