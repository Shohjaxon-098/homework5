import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ButtonOne extends StatefulWidget {
  final int a;
  final String ism;
  ButtonOne({super.key, required this.a, required this.ism});

  @override
  State<ButtonOne> createState() => _ButtonOneState();
}

class _ButtonOneState extends State<ButtonOne> {
  int a = 2023;
  String ism = 'NemNig';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context, a);
        },
        child: const Icon(Icons.g_mobiledata),
      ),
      body: Center(
        child: Text("${widget.a} ism ${ism}"),
      ),
    );
  }
}
