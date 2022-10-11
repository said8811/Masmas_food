import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutters/job-search/forget.dart';
import 'package:flutters/job-search/signup.dart';
import 'package:flutters/signup.dart';
import 'package:flutters/utils/styles.dart';

class Joblogin extends StatefulWidget {
  const Joblogin({super.key});

  @override
  State<Joblogin> createState() => _JobloginState();
}

class _JobloginState extends State<Joblogin> {
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
          padding: const EdgeInsets.only(top: 200.0),
          child: SingleChildScrollView(
            child: Container(
                height: 600,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome back",
                      style: MyStyles.robotoBold700.copyWith(fontSize: 25),
                    ),
                    Text(
                      "Login to continue",
                      style: MyStyles.robotoRegular400
                          .copyWith(color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Email adress"),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), hintText: "Password"),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Forget()));
                            });
                          },
                          child: const Text(
                            "Forgot Password?",
                            style: MyStyles.robotoBold700,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
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
                          "Log In",
                          style: MyStyles.robotoBold700
                              .copyWith(color: Colors.white),
                        )),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Center(
                      child: Text(
                        "or Continue with",
                        style: MyStyles.robotoRegular400
                            .copyWith(color: Colors.grey),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.blue[900]),
                        ),
                        Container(
                          height: 50,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.black),
                        ),
                        Container(
                          height: 50,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.blue[100]),
                        ),
                        Container(
                          height: 50,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have account?",
                          style: MyStyles.robotoRegular400
                              .copyWith(color: Colors.grey),
                        ),
                        SizedBox(
                          width: 5,
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
                          child: Text(
                            'Sign Up',
                            style: MyStyles.robotoBold700,
                          ),
                        )
                      ],
                    ),
                  ],
                )),
          ),
        ),
      )),
    );
  }
}
