import 'package:flutter/material.dart';
import 'package:todo_list_flutter/todo.dart';

typedef ToggleTodoCallback = void Function(Todo, bool);

class TodoList extends StatelessWidget {
  const TodoList({Key key, @required this.todos, this.onTodoToggle})
      : super(key: key);

  final List<Todo> todos;
  final ToggleTodoCallback onTodoToggle;

  Widget _buildItem(BuildContext context, int index) {
    final todo = todos[index];
    return CheckboxListTile(
      title: Text(todo.title),
      value: todo.isDone,
      onChanged: (bool value) {
        onTodoToggle(todo, value);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _buildItem,
      itemCount: todos.length,
    );
  }
}
