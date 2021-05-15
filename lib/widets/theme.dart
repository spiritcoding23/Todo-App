import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';

class ThemeSelector extends StatelessWidget {
  Color colour;
  String text;
  ThemeSelector({required this.text, required this.colour});
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: EdgeInsets.only(top: 5.0),
        child: TextButton(
          onPressed: () {
            Provider.of<TaskData>(context, listen: false).setColorTask(colour);
            Navigator.pop(context);
          },
          child: Row(
            children: [
              Container(
                color: colour,
                height: 20.0,
                width: 20.0,
              ),
              SizedBox(width: 20.0),
              Text(
                text,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
