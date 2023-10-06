import 'package:flutter/material.dart';
import 'package:todo/model/model_todo.dart';

import '../widget/todo_item.dart';

class MonthlyScreen extends StatefulWidget {
  _MonthlyScreenState createState() => _MonthlyScreenState();
}

class _MonthlyScreenState extends State<MonthlyScreen> {
  List<Todo> todos = [
    Todo.fromMap({
      'title': '플러터 공부하기',
      'isComplete': false,
      'isDuration': false,
      'startDate': DateTime(2023, 10, 6)
    }),
    Todo.fromMap({
      'title': '투두 앱 만들기',
      'isComplete': true,
      'isDuration': true,
      'startDate': DateTime(2023, 10, 6),
      'endDate': DateTime(2023, 10, 10)
    })
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: TodoItem(
        todo: todos[0],
      )),
    );
  }
}
