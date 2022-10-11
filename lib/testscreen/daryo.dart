import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutters/testscreen/gridview.dart';
import 'package:flutters/utils/styles.dart';

class Daryo extends StatefulWidget {
  const Daryo({super.key});

  @override
  State<Daryo> createState() => _DaryoState();
}

class _DaryoState extends State<Daryo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Daryo"),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              DrawerHeader(
                padding: EdgeInsets.all(0),
                child: Container(
                  color: Colors.blue,
                  padding: EdgeInsets.all(0),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Daryo",
                            style: MyStyles.robotoBold700
                                .copyWith(color: Colors.white, fontSize: 25),
                          ),
                        ),
                        Center(
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(color: Colors.white),
                                child: Text(
                                  "Lotincha",
                                  style: MyStyles.robotoRegular400
                                      .copyWith(color: Colors.blue),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(color: Colors.blue),
                                child: Text(
                                  "kirilcha",
                                  style: MyStyles.robotoRegular400
                                      .copyWith(color: Colors.white),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ]),
                ),
              )
            ],
          ),
        ));
  }
}
