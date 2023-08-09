import 'package:flutter/material.dart';
import 'package:todo_list/Scene/Cell/ListCell.dart';

class TodoListView extends StatefulWidget {
  const TodoListView({super.key});

  @override
  State<TodoListView> createState() => _TodoListViewState();
}

class _TodoListViewState extends State<TodoListView> {
  List<String> _contents = [];
  String _inputText = "";

  _TodoListViewState() {
    this._contents.add("hello!!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TodoList'
        ),
      ),
      body: ListView.separated(
        itemCount: _contents.length,
        itemBuilder: (BuildContext context, int index) {
          return ListCell(_contents[index]);
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 10);
        },
        padding: EdgeInsets.all(10),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: (){
          showDialog(
              context: context,
              barrierDismissible: true,
              builder: (BuildContext context) {
                return Dialog(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField(
                          onChanged: (String text) {
                            this._inputText = text;
                          },
                          decoration: InputDecoration(
                            labelText: '할일',
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(width: 1, color: Colors.grey)
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(width: 1, color: Colors.grey)
                            ),
                          ),
                        ),
                        ElevatedButton(
                            onPressed: (){
                              setState(() {
                                Navigator.of(context).pop();
                                if (!_inputText.isEmpty) {
                                  this._contents.add(_inputText);
                                  _inputText = "";
                                }
                              });
                            },
                            child: Text(
                              '확인',
                              style: TextStyle(color: Colors.white),
                            )
                        )
                      ],
                    ),
                  ),
                  insetPadding: EdgeInsets.fromLTRB(20, 150, 20, 200),
                );
              }
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
