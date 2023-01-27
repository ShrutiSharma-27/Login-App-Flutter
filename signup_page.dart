import 'package:flutter/material.dart';
import 'package:flutter_application_login/reuseable_widgets/reuse1.dart';
import 'package:flutter_application_login/screens/home_screen.dart';
import 'package:flutter_application_login/utilities/colors.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Sign Up",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            hexStringToColor("#AD1457"), 
            hexStringToColor("#004D40"), 
            hexStringToColor("#EF6C00")
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            child: SingleChildScrollView(
              child: Padding(
            padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 20,
                  ),
                  reusableTextField("Enter username", Icons.person_outline, false, _userNameTextController),
                  const SizedBox(
                    height: 20,
                  ),
                  reusableTextField("Enter email id", Icons.person_outline, false, _emailTextController),
                  const SizedBox(
                    height: 20,
                  ),
                  reusableTextField("Enter password", Icons.lock_outlined, true, _passwordTextController),
                  const SizedBox(
                    height: 20,
                  ),
                  LoginSignUpButton(context, false, (){
                    Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  })
                ],
              ),
              ))),
    );
  }
}