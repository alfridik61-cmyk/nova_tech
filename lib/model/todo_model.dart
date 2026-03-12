class TodoModel {
  final String id;
  final String title;
  final bool isCompleted;
  const TodoModel({
    required this.id,
    required this.isCompleted,
    required this.title,
  });
  TodoModel copyWith({bool? isCompleted, String? title}) {
    return TodoModel(
      id: id,
      isCompleted: isCompleted ?? this.isCompleted,
      title: title ?? this.title,
    );
  }

  Map<String, dynamic> toMap() {
    return {"id": id, "title": title, "isCompleted": isCompleted};
  }

  factory TodoModel.fromMap(Map<String, dynamic> map) {
    return TodoModel(
      id: map["id"],
      isCompleted: map["isCompleted"],
      title: map["title"],
    );
  }
}
