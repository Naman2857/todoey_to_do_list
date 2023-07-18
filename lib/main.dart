import 'package:flutter/material.dart';
import 'package:todoey_to_do_list/models/task_data.dart';
import 'package:todoey_to_do_list/screens/taskscreen.dart';
import 'package:provider/provider.dart';
// import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => taskdata(),
      child: MaterialApp(
        home: taskscreen(),
      ),
    );
  }
}
