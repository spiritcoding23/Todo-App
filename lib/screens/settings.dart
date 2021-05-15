import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task.dart';
import 'package:todo_app/models/task_data.dart';
import 'package:todo_app/widets/theme.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(30.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Select Theme",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            ThemeSelector(text: 'Red', colour: Colors.red),
            ThemeSelector(text: 'Sky Blue', colour: Colors.lightBlueAccent),
            ThemeSelector(text: 'Yellow', colour: Colors.yellowAccent),
            ThemeSelector(text: 'Black', colour: Colors.black87),
            ThemeSelector(text: 'Green', colour: Colors.teal),
            ThemeSelector(text: 'Orange', colour: Colors.orange),
          ],
        ),
      ),
    );
  }
}
