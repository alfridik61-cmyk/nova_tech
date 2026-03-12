import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:novox_tech_app/bloc/todo_event.dart';
import 'package:novox_tech_app/bloc/todo_state.dart';
import 'package:novox_tech_app/model/todo_model.dart';

class TodoBloc extends HydratedBloc<TodoEvent, TodoState> {
  TodoBloc() : super(TodoState()) {
    on<AddTodoEvent>(_addTodo);
  }

  void _addTodo(AddTodoEvent event, Emitter<TodoState> emit) {
    emit(state.copyWith(title: event.title, isCompleted: event.isCompleted));
  }

  @override
  TodoState? fromJson(Map<String, dynamic> json) {
    final todos = (json["todo"] as List)
        .map((e) => TodoModel.fromMap(e))
        .toList();
    return TodoState(todo: todos);
  }
    @override
  Map<String, dynamic>? toJson(TodoState state) {
    return {'todos': state.todo.map((e) => e.toMap()).toList()};
  }
}
