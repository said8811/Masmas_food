import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutters/explore.dart';
import 'package:flutters/singin.dart';
import 'package:flutters/testscreen/login.dart';
import 'package:flutters/weather-app/homepage.dart';

class Testpage extends StatefulWidget {
  const Testpage({super.key});

  @override
  State<Testpage> createState() => _TestpageState();
}

int selectedindex = 0;

List<Widget> _pages = [HomeWeather(), SignIn(), Login(), Explore()];

class _TestpageState extends State<Testpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[selectedindex],
      
    );
  }
}
