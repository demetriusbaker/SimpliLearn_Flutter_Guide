import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:quotesapp/screens/second_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: ElevatedButton(
          onPressed: () async {
            var json = '{'
                '"id": "8",'
                '"name": "Dietrich"'
                '}';
            var data = jsonDecode(json);
            var id = data["id"];
            var name = data["name"];

            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => SecondScreen(
                      id: id,
                      name: name,
                    )));
          },
          child: const Text("Go to next screen"),
        ),
      )),
    );
  }
}
