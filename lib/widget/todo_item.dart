import 'package:flutter/material.dart';
import 'package:todo/widget/checkbox.dart';

import '../model/model_todo.dart';

class TodoItem extends StatefulWidget {
  Todo todo;

  TodoItem({required this.todo});

  _TodoItemState createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  void _toggleTodo() {
    setState(() {
      widget.todo.isComplete = !widget.todo.isComplete;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        CustomCheckbox(
          isChecked: widget.todo.isComplete,
          onChanged: _toggleTodo,
        ),
        Text(
          widget.todo.title,
          style: TextStyle(
              decoration: widget.todo.isComplete
                  ? TextDecoration.lineThrough
                  : TextDecoration.none),
        )
      ]),
    );
  }
}
