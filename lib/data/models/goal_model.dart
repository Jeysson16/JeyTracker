import '../../domain/entities/goal.dart';

class GoalModel extends Goal {
  const GoalModel({
    required String id,
    required String title,
    required String description,
    required DateTime date,
    required bool completed,
  }) : super(
         id: id,
         title: title,
         description: description,
         date: date,
         completed: completed,
       );

  factory GoalModel.fromMap(Map<String, dynamic> map) {
    return GoalModel(
      id: map['id'],
      title: map['title'],
      description: map['description'],
      date: DateTime.parse(map['date']),
      completed: map['completed'] == 1,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'date': date.toIso8601String(),
      'completed': completed ? 1 : 0,
    };
  }

  factory GoalModel.fromJson(Map<String, dynamic> json) {
    return GoalModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      date: DateTime.parse(json['date']),
      completed: json['completed'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'date': date.toIso8601String(),
      'completed': completed,
    };
  }
}
