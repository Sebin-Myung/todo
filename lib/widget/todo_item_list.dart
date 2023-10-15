import 'package:flutter/material.dart';
import 'package:todo/model/model_todo.dart';
import 'package:todo/widget/todo_item.dart';

class TodoItemList extends StatefulWidget {
  List<Todo> todoList;

  TodoItemList({super.key, required this.todoList});

  _TodoItemListState createState() => _TodoItemListState();
}

class _TodoItemListState extends State<TodoItemList> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: widget.todoList.map((todo) => TodoItem(todo: todo)).toList(),
    );
  }
}
