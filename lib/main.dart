import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_list_flutter/todo_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      title: 'Todo Lists',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TodoListScreen(title: 'Todos'),
    );
  }
}
