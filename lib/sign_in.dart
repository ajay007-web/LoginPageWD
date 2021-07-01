import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sign_in_page/total_student.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final String id = "flutter@test.com";
  final String password = "1234";

  GlobalKey<FormState> anskey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void validate() {
    if (id == emailController.text && password == passwordController.text) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => TotalStudentList()));
    } else if(anskey.currentState!.validate()) {
      print("Error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Padding(
        padding: EdgeInsets.all(25.0),
        child: Center(
          child: Form(
            key: anskey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Email",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Required";
                      } else {
                        return null;
                      }
                    }),
                Padding(padding: EdgeInsets.only(top: 10.0)),
                TextFormField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Password",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Required";
                      } else
                        return null;
                    }),
                RaisedButton(
                  color: Colors.indigo,
                  child: Text("Login",
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  onPressed: validate,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
