import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListCell extends StatelessWidget {
  // const ListCell ({super.key});
  const ListCell(this.content);
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.amberAccent,
        borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: Text(content),
      padding: EdgeInsets.all(10),
    );
  }
}
