import 'package:flutter/material.dart';
import 'package:todo_app/consts/colors.dart';
import 'package:todo_app/pages/add_item_page.dart';
import 'package:todo_app/widgets/task_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> AddItemPage()));
        },
        backgroundColor: focusedColor,
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return TaskWidget();
          },
          itemCount: 10,
        ),
      ),
    );
  }
}
