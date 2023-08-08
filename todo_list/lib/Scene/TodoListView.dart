import 'package:flutter/material.dart';
import 'package:todo_list/Resource/Fonts.dart';
import 'package:todo_list/Scene/Cell/ListCell.dart';

class TodoListView extends StatelessWidget {
  const TodoListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TodoList'
        ),
      ),
      body: ListView.separated(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return ListCell('hellw!!');
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 10);
        },
        padding: EdgeInsets.all(10),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: (){

        },
        child: Icon(Icons.add),
      ),
    );
  }
}
