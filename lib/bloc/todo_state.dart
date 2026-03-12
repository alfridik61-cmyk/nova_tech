import 'package:equatable/equatable.dart';
import 'package:novox_tech_app/model/todo_model.dart';

class TodoState extends Equatable {
  final List<TodoModel> todo;
  final String title;
  final bool isCompleted;
  const TodoState({
    this.todo = const [],
    this.isCompleted = false,
    this.title = '',
  });

  TodoState copyWith({
    List<TodoModel>? todo,
    String? title,
    bool? isCompleted,
  }) {
    return TodoState(
      todo: todo ?? this.todo,
      isCompleted: isCompleted ?? this.isCompleted,
      title: title ?? this.title,
    );
  }

  @override
  List<Object?> get props => [todo, isCompleted, title];
}
