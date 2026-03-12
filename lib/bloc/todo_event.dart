import 'package:equatable/equatable.dart';

abstract class TodoEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class AddTodoEvent extends TodoEvent {
  final String title;
  final bool isCompleted;
 AddTodoEvent({required this.isCompleted, required this.title});
}

class ShowEvent extends TodoEvent{}