import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:novox_tech_app/bloc/todo_bloc.dart';
import 'package:novox_tech_app/bloc/todo_event.dart';
import 'package:novox_tech_app/bloc/todo_state.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final TextEditingController titleEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            snap: false,
            pinned: false,
            floating: false,
            actions: [
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return BlocConsumer<TodoBloc, TodoState>(
                        listener: (context, state) {},
                        builder: (context, state) {
                          return AlertDialog(
                            title: Text("Add Task"),
                            actions: [
                              Column(
                                children: [
                                  TextField(
                                    decoration: InputDecoration(
                                      hintText: "task",
                                      border: OutlineInputBorder(),
                                    ),
                                    controller: titleEditingController,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      context.read<TodoBloc>().add(
                                        AddTodoEvent(
                                          isCompleted: false,
                                          title: titleEditingController.text
                                              .toString()
                                              .trim(),
                                        ),
                                      );
                                    },
                                    child: Text("Submit"),
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                      );
                    },
                  );
                },
                icon: Icon(Icons.add),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text("Todo app", style: TextStyle(fontSize: 30)),
            ),
          ),

          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return ListTile(title: Text("hii"));
            }, childCount: 20),
          ),
        ],
      ),
    );
  }
}
