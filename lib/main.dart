import 'package:flutter/material.dart';
import 'package:todoey_app/models/task_data.dart';
import 'package:todoey_app/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/models/task_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TaskData()),
        //ChangeNotifierProvider(create: (_) => SignupProvider()),
      ],
      // return ChangeNotifierProvider(
      //   // builder: (context) => TaskData(),
      //   create: (BuildContext context) {
      //     TaskData();
      //   },
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
