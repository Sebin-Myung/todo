import 'package:intl/intl.dart';

class Todo {
  late final String title;
  late final bool isComplete;
  late final bool isDuration;
  late final DateTime startDate;
  late final DateTime? endDate;

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
