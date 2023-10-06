import 'package:intl/intl.dart';

class Todo {
  String title;
  bool isComplete;
  bool isDuration;
  DateTime startDate;
  DateTime? endDate;

  Todo.fromMap(Map<String, dynamic> map)
      : title = map['title'],
        isComplete = map['isComplete'],
        isDuration = map['isDuration'],
        startDate = map['startDate'],
        endDate = map['endDate'];

  // 인스턴스를 출력할 때 용이하게 하기위해
  @override
  String toString() =>
      '$title${isDuration ? '(${DateFormat('M월d일').format(startDate)}~${DateFormat('M월d일').format(endDate!)})' : ''}';
}
