

import 'package:flutter/material.dart';
import 'package:statergile_todoapp/components/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
   VoidCallback onSave;
   VoidCallback onCancel;

  DialogBox(
      {super.key,
     required this.controller,
       required this.onCancel,
      required this.onSave
     }
    );

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color.fromARGB(255, 193, 81, 178),
      content: Container(
        height: 120,
        color: Color.fromARGB(255, 193, 81, 178),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Add a new task'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(onPressed: onSave, text: "Save"),
                const SizedBox(
                  width: 8,
                ),
                MybuttonTwo()
                //MyButton(onPressed: onCancel, text: "Cancel")
              ],
            )
          ],
        ),
      ),
    );
  }
}


