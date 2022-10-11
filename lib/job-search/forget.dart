import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutters/job-search/signup.dart';
import 'package:flutters/utils/styles.dart';

class Forget extends StatefulWidget {
  const Forget({super.key});

  @override
  State<Forget> createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.only(bottom: 0),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(color: Colors.purple),
        child: Padding(
          padding: const EdgeInsets.only(top: 500.0),
          child: Container(
              height: 500,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Forget Password",
                    style: MyStyles.robotoBold700.copyWith(fontSize: 25),
                  ),
                  Text(
                    "Enter your email to recover your password",
                    style:
                        MyStyles.robotoRegular400.copyWith(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: "Email adress"),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => JobSignUp()));
                      });
                    },
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.purple),
                      child: Center(
                          child: Text(
                        "Sign Up",
                        style: MyStyles.robotoBold700
                            .copyWith(color: Colors.white),
                      )),
                    ),
                  ),
                ],
              )),
        ),
      )),
    );
  }
}
