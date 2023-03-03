import 'package:flutter/material.dart';

import 'Button2.dart';
import 'login.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int son = 0;

  String name = "two pages";
  int yosh = 3;

  int b = 999;
  int a = 12;

  get ism => "Dart";

  get age => 23;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 228, 10, 28),
        leading: const Icon(Icons.arrow_back_outlined),
        title: const Text("Home Page"),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {
              print("Xavfli");
            },
            icon: const Icon(Icons.mail),
          ),
          IconButton(
            onPressed: () {
              print("ssss");
            },
            icon: const Icon(Icons.person),
          ),
        ],
      ),
      body: Center(
        child: Text("$yosh"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LoginPage(
                name: name,
                age: age,
              ),
            ),
          ).then((value) {
            setState(() {
              yosh = value;
            });
          });
          // Navigator.pop(context); orqaga
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => ButtonOne(
                      a: a,
                      ism: ism,
                    )),
          ).then((value) {
            setState(() {
              a = value;
              name = value;
            });
          });
        },
        child: const Icon(Icons.favorite_sharp),
      ),
    );
  }
}
