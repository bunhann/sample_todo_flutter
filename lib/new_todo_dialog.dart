import 'package:flutter/material.dart';
import 'package:todo_list_flutter/todo.dart';

class TodoDialog extends StatelessWidget {
  final TextEditingController _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('New Todo'),
      content: TextField(
        keyboardType: TextInputType.text,
        controller: _controller,
        autofocus: true,
      ),
      actions: <Widget>[
        FlatButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text('Cancel'),
        ),
        FlatButton(
          onPressed: () {
            Todo _todo = new Todo(title: _controller.value.text);
            _controller.clear();
            Navigator.of(context).pop(_todo);
          },
          child: Text('Okay'),
        ),
      ],
    );
  }
}
