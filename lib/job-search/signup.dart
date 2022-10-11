import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutters/utils/styles.dart';

class JobSignUp extends StatefulWidget {
  const JobSignUp({super.key});

  @override
  State<JobSignUp> createState() => _JobSignUpState();
}

class _JobSignUpState extends State<JobSignUp> {
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
                      "Create an account",
                      style: MyStyles.robotoBold700.copyWith(fontSize: 25),
                    ),
                    Text(
                      "Sign up to continue",
                      style: MyStyles.robotoRegular400
                          .copyWith(color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), hintText: "First name"),
                    ),
                    SizedBox(
                      height: 15,
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
                    SizedBox(
                      height: 60,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
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
                              Navigator.pop(context);
                            });
                          },
                          child: Text(
                            'Sign In',
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
