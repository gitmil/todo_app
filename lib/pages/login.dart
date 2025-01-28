import 'package:flutter/material.dart';
import 'package:todo_app/consts/colors.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();

    emailFocusNode.addListener(() {
      setState(
        () {},
      );
    });

    passwordFocusNode.addListener(() {
      setState(
        () {},
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              image(),
              SizedBox(height: 50),
              input('Email', Icons.email, emailController, emailFocusNode),
              SizedBox(height: 10),
              input('Password', Icons.password, passwordController,
                  passwordFocusNode),
              SizedBox(height: 10),
              account(),
              SizedBox(height: 10),
              loginButton(),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  Padding loginButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        width: double.infinity,
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: focusedColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          'LogIn',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Padding account() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Don\'t have an account?',
            style: TextStyle(fontSize: 14, color: Colors.grey[700]),
          ),
          SizedBox(width: 5),
          Text(
            'Sign Up',
            style: TextStyle(
                fontSize: 14, color: Colors.blue, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Padding input(String typeName, IconData icon,
      TextEditingController controller, FocusNode focusNode) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: TextField(
          controller: controller,
          focusNode: focusNode,
          style: TextStyle(fontSize: 18, color: Colors.black),
          decoration: InputDecoration(
            prefixIcon: Icon(icon,
                color: focusNode.hasFocus ? focusedColor : borderColor),
            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            hintText: typeName,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: borderColor, width: 2.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: focusedColor, width: 2.0),
            ),
          ),
        ),
      ),
    );
  }

  Padding image() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        width: double.infinity,
        height: 300,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/login_header.png'),
          ),
        ),
      ),
    );
  }
}
