import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000000),
      body: Column(
        children: [
          Image.asset("assets/login.png"),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Sign in to subwise!!",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          Container(
            width: 390,
            height: 70,
            margin: EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.white)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/google_icon.png",
                  height: 30,
                  width: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Sign in with Google",
                  style: TextStyle(fontSize: 26, color: Colors.white),
                ),
              ],
            ),
          ),
          Row(
            children: const [
              Expanded(
                child: Divider(
                  thickness: 2,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  "Sign in with email",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Expanded(
                child: Divider(
                  thickness: 2,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Email",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              color: Color(0xff313131),
              child: TextFormField(
                decoration: InputDecoration(border: InputBorder.none),
              )),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Password",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              color: Color(0xff313131),
              child: TextFormField(
                decoration: InputDecoration(border: InputBorder.none),
              )),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 425,
            height: 50,
            decoration: BoxDecoration(color: Colors.white),
            child: Center(
                child: Text(
              "Sign in",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )),
          )
        ],
      ),
    );
  }
}
