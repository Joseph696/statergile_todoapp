import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  MyButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Colors.purple,
      child: Text('Add Task'),
    );
  }
}

class MybuttonTwo extends StatelessWidget {
  const MybuttonTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.pop(context);
      },
      color: Colors.purple,
      child: Text("Cancel"),
    );
  }
}
