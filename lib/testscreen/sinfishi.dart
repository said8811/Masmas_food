import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack"),
      ),
      body: Center(
          child: Container(
              child: Stack(
        children: [
          Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(15))),
          ),
          Positioned(
              right: 12,
              top: 12,
              child: Image.asset(
                'assets/images/x.png',
                width: 31,
              )),
        ],
      ))),
    );
  }
}
