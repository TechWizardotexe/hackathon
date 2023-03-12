// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:papatruecaller/utils/colors.dart';
import 'package:papatruecaller/widgets/big_text.dart';

class OTP extends StatefulWidget {
  const OTP({super.key});
  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                // color: Colors.red,
                width: w,
                height: h * 0.34,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/logo2.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 25),
              Container(
                width: w,
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(
                      text: "OTP VERIFICATION",
                      color: AppColor.mainColor,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
