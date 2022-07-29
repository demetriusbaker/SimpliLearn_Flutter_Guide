import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  String id, name;

  SecondScreen({Key? key, required this.id, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "id: $id",
              style: const TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "name: $name",
                style: const TextStyle(fontSize: 15),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
