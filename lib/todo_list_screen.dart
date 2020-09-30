import 'package:flutter/material.dart';
import 'package:todo_list_flutter/new_todo_dialog.dart';
import 'package:todo_list_flutter/todo.dart';
import 'package:todo_list_flutter/todo_list.dart';

class TodoListScreen extends StatefulWidget {
  TodoListScreen({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoListScreen> {
  List<Todo> todos = [
    Todo(title: 'Learn Dart'),
    Todo(title: 'Learn Flutter'),
    Todo(title: 'Learn Web Development'),
    Todo(title: 'Learn Docker'),
    Todo(title: 'Learn Kubunet'),
    Todo(title: 'Learn Azure'),
  ];

  void _toggoleTodo(Todo todo, bool isChecked) {
    print(todo.title);
    setState(() {
      todo.isDone = isChecked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: TodoList(todos: this.todos, onTodoToggle: _toggoleTodo),
      floatingActionButton: FloatingActionButton(
        onPressed: _addTodo,
        child: Icon(Icons.add),
      ),
    );
  }

  void _addTodo() async {
    final todo = await showDialog<Todo>(
      context: context,
      builder: (BuildContext context) {
        return TodoDialog();
      },
    );

    if (todo != null) {
      setState(() {
        todos.add(todo);
      });
    }
  }
}
