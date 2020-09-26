import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/Screens/tasks_screen.dart';
import 'package:to_do/models/task_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
