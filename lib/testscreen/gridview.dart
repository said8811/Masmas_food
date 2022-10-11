import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Gridview extends StatefulWidget {
  const Gridview({super.key});

  @override
  State<Gridview> createState() => _GridviewState();
}

List colors = [
  Colors.green,
  Colors.black,
  Colors.white,
  Colors.red,
  Colors.green,
  Colors.black,
  Colors.white,
  Colors.red,
  Colors.green,
  Colors.black,
  Colors.white,
  Colors.red,
  Colors.green,
  Colors.black,
  Colors.white,
  Colors.red,
  Colors.green,
  Colors.black,
  Colors.white,
  Colors.red
];

class _GridviewState extends State<Gridview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          scrollDirection: Axis.vertical,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemCount: 30,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              color: colors[index],
              width: 40,
              height: 120,
              child: Center(child: Text(index.toString())),
            );
          }),
    );
  }
}
