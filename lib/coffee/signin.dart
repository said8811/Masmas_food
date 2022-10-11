import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutters/utils/styles.dart';

class SigninCoffee extends StatefulWidget {
  const SigninCoffee({super.key});

  @override
  State<SigninCoffee> createState() => _SigninCoffeeState();
}

class _SigninCoffeeState extends State<SigninCoffee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 18),
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/coffee_bg.png'),
                  fit: BoxFit.cover)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 64,
              ),
              Padding(
                padding: EdgeInsets.only(left: 5),
                child: Image(
                  image: AssetImage('assets/images/back_coffeee.png'),
                  width: 48,
                ),
              ),
              SizedBox(
                height: 132,
              ),
              Container(
                height: 469,
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 18, horizontal: 15),
                decoration: BoxDecoration(
                    color: Color(0xFF6D4831),
                    borderRadius: BorderRadius.circular(32)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        "Hello!",
                        style: MyStyles.robotoBold700
                            .copyWith(color: Colors.white, fontSize: 25),
                      ),
                    ),
                    SizedBox(
                      height: 55,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Phone number or Email",
                        hintStyle: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                    Divider(
                      color: Colors.white,
                      height: 2,
                      thickness: 2,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                    Divider(
                      color: Colors.white,
                      height: 2,
                      thickness: 2,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: Container(
                        width: double.infinity,
                        height: 53,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(22),
                            border: Border.all(width: 1, color: Colors.brown)),
                        child: Center(
                          child: Text(
                            "Sign in",
                            style: MyStyles.robotoBold700
                                .copyWith(color: Colors.brown, fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    Center(
                      child: Text(
                        "Or Sign in With",
                        style: MyStyles.robotoBold700
                            .copyWith(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/images/googleicon.png'),
                            width: 26,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Image(
                            image: AssetImage('assets/images/facebookicon.png'),
                            width: 14.3,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Image(
                            image: AssetImage('assets/images/twitter.png'),
                            width: 31,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
