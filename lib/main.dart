import 'package:flutter/material.dart';
import 'package:sign_in_page/sign_in.dart';
import 'package:sign_in_page/total_student.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login",
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: SignInPage(),


    );
  }
}
