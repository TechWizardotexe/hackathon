// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:papatruecaller/utils/colors.dart';
import 'package:papatruecaller/widgets/big_text.dart';
import 'package:papatruecaller/widgets/small_text.dart';

import '../widgets/widgets.dart';
import 'register_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String name = "";
  final formkey = GlobalKey<FormState>();
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.red,
        body: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: w,
                height: h * 0.34,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/logo2.png'),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(height: 25),
              Container(
                width: w,
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        BigText(
                          text: "WELCOME",
                          color: AppColor.mainColor,
                          size: 30,
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        // Padding(
                        //   padding: EdgeInsets.only(left: 15),
                        // ),
                        SmallText(
                          text: 'Sign into your account',
                          size: 20,
                          color: AppColor.smalltextColor,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 75),
              // login Box
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: TextFormField(
                  decoration: textInputDecoration.copyWith(
                    hintText: "Enter Email",
                    labelText: "Email",
                    prefixIcon: Icon(
                      Icons.email,
                      color: AppColor.iconColor,
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Email cannot be empty";
                    }
                    return RegExp(
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
                    ).hasMatch(value)
                        ? null
                        : "Please enter a valid email id";
                  },
                  onChanged: (value) {
                    name = value;
                    setState(() {
                      email = value;
                    });
                  },
                ),
              ),
              SizedBox(height: 25.0),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: TextFormField(
                  obscureText: true,
                  decoration: textInputDecoration.copyWith(
                    hintText: "Enter Password",
                    labelText: "Password",
                    prefixIcon: Icon(
                      Icons.lock,
                      color: AppColor.iconColor,
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "password cannot be empty";
                    } else if (value.length < 6) {
                      return "password must be greater than 6 characters";
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      password = value;
                    });
                  },
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 100,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.mainColor,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: BigText(
                    text: "SIGN IN",
                    color: Colors.white,
                    size: 16,
                  ),
                  // login funtcion pdega
                  onPressed: () {},
                ),
              ),
              SizedBox(height: 25),
              GestureDetector(
                onTap: () {
                  nextScreen(
                    context,
                    RegisterPage(),
                  );
                },
                child: SmallText(
                  text: 'Dont have a account? Register Here ',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
