import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListCell extends StatefulWidget {
  // const ListCell ({super.key});
  ListCell(this.content);
  final String content;
  bool isCheck = false;

  @override
  State<ListCell> createState() => _ListCellState();
}

class _ListCellState extends State<ListCell> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.amberAccent,
        borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(widget.content),
          Expanded(child: SizedBox()),
          IconButton(
            onPressed: (){
              setState(() {
                widget.isCheck = !widget.isCheck;
              });
            },
            icon: Icon(Icons.check),
            color: widget.isCheck ? Colors.green : Colors.black,
          )
        ],
      ),
      padding: EdgeInsets.all(10),
    );
  }
}
