import 'package:flutter/material.dart';

import 'package:to_do/models/todo.dart';
//import 'package:to_do/screens/home.dart';

class todo_item extends StatelessWidget {
  final Todo todo;
  final ontodochange;
  final ondeleteitem;

  final ck = Icon(
    Icons.check_box,
    color: Colors.blue,
  );
  final uck = Icon(Icons.check_box_outline_blank);

  todo_item({
    Key? key,
    required this.todo,
    required this.ontodochange,
    required this.ondeleteitem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          ontodochange(todo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: todo.isDone ? ck : uck,
        title: Text(
          todo.todoText!,
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            decoration: todo.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Container(
          padding: const EdgeInsets.all(0),
          margin: const EdgeInsets.symmetric(vertical: 12),
          width: 35,
          height: 35,
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(5)),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            icon: const Icon(Icons.delete),
            onPressed: () {
              ondeleteitem(todo.id);
            },
          ),
        ),
      ),
    );
  }
}
