import 'package:flutter/material.dart';

void main() {
  runApp(const Container_ex());
}

class Container_ex extends StatelessWidget {
  const Container_ex({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Contaner_EX"),
        ),
        body: Container(
            width: 100, // 너비 지정
            height: 100, // 높이 지정
            decoration: BoxDecoration(
              color: Colors.black,
              border: Border.all(
                color: Colors.red,
                style: BorderStyle.solid,
                width: 5,
              ),
              shape: BoxShape.circle
            ),
            child: const Text("응애", style: TextStyle(color: Colors.white)),
          ),
        ),
    );
  }
}
