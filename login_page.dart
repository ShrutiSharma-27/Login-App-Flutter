
import 'package:flutter/material.dart';
import 'package:flutter_application_login/screens/home_screen.dart';
import 'package:flutter_application_login/screens/signup_page.dart';
import 'package:flutter_application_login/utilities/colors.dart';
import 'package:flutter_application_login/reuseable_widgets/reuse1.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: LinearGradient(colors: [hexStringToColor("#AD1457"), hexStringToColor("#004D40"), hexStringToColor("#EF6C00")], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
    child: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          20, MediaQuery.of(context).size.height * 0.2, 20, 0),
          child: Column(
      children: <Widget>[
        logoWidget("assets/images/logo.png"),
        SizedBox(
          height: 30,
        ),
        reusableTextField("Enter username", Icons.person_outline, false, _emailTextController),
        SizedBox(
          height: 20,
        ),
        reusableTextField("Enter password", Icons.lock_outline, true, _passwordTextController),
        SizedBox(
          height: 20,
        ),
        LoginSignUpButton(context, true, (){
          Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => HomeScreen()));
        }),
        signUpOption()
      ],
      ),
      ),
      ),
      ),
      );
  }
  Row signUpOption(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("New User ? ",
            style: TextStyle(color: Color.fromARGB(179, 12, 0, 0), fontSize: 18.0)),
        GestureDetector(
          onTap: (){
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => SignupPage()));
          },
          child: const Text(
            "Sign Up",
            style: TextStyle(color: Color.fromARGB(255, 12, 1, 1), fontWeight: FontWeight.bold, fontSize: 18.0),
          ),
        )
      ],
    );
  }
}