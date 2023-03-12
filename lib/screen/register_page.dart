// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../widgets/big_text.dart';
import '../widgets/small_text.dart';
import '../widgets/widgets.dart';
import 'login_Screen.dart';
import 'otp_screen.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String fullName = "";
  final formkey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  String Phone = "";

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
              SizedBox(height: 30),
              Container(
                width: w,
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        BigText(
                          text: "WELCOME $fullName",
                          color: AppColor.mainColor,
                          size: 30,
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        // Padding(
                        //   padding: EdgeInsets.only(left: 10),
                        // ),
                        SmallText(
                          text: 'Create your account',
                          size: 20,
                          color: AppColor.smalltextColor,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 50),
              // registraion Box
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: TextFormField(
                  decoration: textInputDecoration.copyWith(
                    hintText: "Enter Full Name",
                    labelText: "Full Name",
                    prefixIcon: Icon(
                      Icons.person,
                      color: AppColor.iconColor,
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Name Cannot be Empty";
                    }
                    return null;
                  },
                  onChanged: (value) {
                    fullName = value;
                    setState(
                      () {
                        fullName = value;
                      },
                    );
                  },
                ),
              ),
              SizedBox(height: 25),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: TextFormField(
                  decoration: textInputDecoration.copyWith(
                    hintText: "Enter Phone Number",
                    labelText: "Phone Number",
                    prefixIcon: Icon(
                      Icons.person,
                      color: AppColor.iconColor,
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Phone Cannot be Empty";
                    }
                    return null;
                  },
                  onChanged: (value) {
                    Phone = value;
                    setState(
                      () {
                        Phone = value;
                      },
                    );
                  },
                ),
              ),
              SizedBox(height: 25.0),
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
                    email = value;
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
                    text: "SIGN UP",
                    color: Colors.white,
                    size: 16,
                  ),
                  // login funtcion pdega
                  onPressed: () {
                    nextScreen(context, OTP());
                  },
                ),
              ),
              SizedBox(height: 5),
              GestureDetector(
                onTap: () {
                  nextScreen(
                    context,
                    LoginScreen(),
                  );
                },
                child: SmallText(
                  text: 'Already have a account? Login Here ',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
