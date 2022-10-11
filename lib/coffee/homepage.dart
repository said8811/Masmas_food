import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutters/coffee/signin.dart';
import 'package:flutters/utils/styles.dart';

class Coffeehome extends StatefulWidget {
  const Coffeehome({super.key});

  @override
  State<Coffeehome> createState() => _CoffeehomeState();
}

class _CoffeehomeState extends State<Coffeehome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/coffee_bg.png'),
                  fit: BoxFit.cover)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 280,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 38.0),
                child: Text(
                  "Coffee\nMade\nEasy",
                  style: MyStyles.robotoBold700
                      .copyWith(color: Colors.white, fontSize: 66),
                ),
              ),
              SizedBox(
                height: 180,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => SigninCoffee()));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 37.0),
                  child: Container(
                    width: double.infinity,
                    height: 53,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22),
                        border: Border.all(
                            width: 1, color: Color.fromARGB(255, 160, 101, 4))),
                    child: Center(
                      child: Text(
                        "Start here",
                        style: MyStyles.robotoBold700
                            .copyWith(color: Colors.brown, fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
