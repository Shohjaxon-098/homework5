import 'package:flutter/material.dart';
import 'package:homework5/pages/homepages.dart';

void main(List<String> args) {
  runApp(MeningIlovam());
}

class MeningIlovam extends StatefulWidget {
  const MeningIlovam({super.key});

  @override
  State<MeningIlovam> createState() => _MeningIlovamState();
}

class _MeningIlovamState extends State<MeningIlovam> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
