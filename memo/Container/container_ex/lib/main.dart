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
            color: Colors.black, // 색 지정
            child: const Text("응애", style: TextStyle(color: Colors.white)),
          ),
        ),
    );
  }
}
