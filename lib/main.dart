import 'package:flutter/material.dart';
import 'package:todo_app/auth/auth_page.dart';
import 'package:todo_app/pages/add_item_page.dart';
import 'package:todo_app/pages/home.dart';
import 'package:todo_app/pages/login.dart';
import 'package:todo_app/pages/main_page.dart';
import 'package:todo_app/pages/setup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:todo_app/widgets/task_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const ToDoApp());
}

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}
