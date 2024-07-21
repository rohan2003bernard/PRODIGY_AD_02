class Todo {
  int? id;
  String? todoText;
  bool isDone;

  Todo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<Todo> TodoList() {
    return [
      Todo(id: 01, todoText: 'Yoga', isDone: true),
      Todo(id: 02, todoText: 'Running', isDone: true),
      Todo(id: 03, todoText: 'Breakfast'),
      Todo(id: 04, todoText: 'HomeWork'),
      Todo(id: 05, todoText: 'Cooking'),
    ];
  }
}
