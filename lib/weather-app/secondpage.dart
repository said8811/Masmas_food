import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutters/utils/styles.dart';

class SecondP extends StatefulWidget {
  const SecondP({super.key});

  @override
  State<SecondP> createState() => _SecondPState();
}

class _SecondPState extends State<SecondP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Color(0xFFFFEBD0),
              Color(0xFFFBC295),
              Color(0xFFFFBD82)
            ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.pop(context);
                      });
                    },
                    child: Container(
                        width: 30, height: 30, child: Icon(Icons.arrow_back)),
                  ),
                  SizedBox(
                    width: 90,
                  ),
                  Text(
                    "Next 7 Days",
                    style: MyStyles.robotoRegular400.copyWith(fontSize: 15),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              width: double.infinity,
              height: 186,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Tomorrow",
                        style: MyStyles.robotoBold700,
                      ),
                      Row(
                        children: [
                          Text(
                            "22 °",
                            style: MyStyles.robotoBold700,
                          ),
                          Image(image: AssetImage('assets/images/cloudsun.png'))
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Image(
                              image: AssetImage('assets/images/umbrella.png'),
                              width: 70,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("1 cm")
                        ],
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Image(
                              image: AssetImage('assets/images/winding.png'),
                              width: 70,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("15 km/h")
                        ],
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Image(
                              image: AssetImage('assets/images/branch.png'),
                              width: 70,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("50 %")
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              child: Expanded(
                child: ListView(
                  children: [
                    Wetherinfo("Thursday", '21 °', 'assets/images/sun.png', 5),
                    SizedBox(
                      height: 20,
                    ),
                    Wetherinfo("Friday", '24 °', 'assets/images/sun.png', 5),
                    SizedBox(
                      height: 20,
                    ),
                    Wetherinfo(
                        "Saturday", '18 °', 'assets/images/cloudsun.png', 5),
                    SizedBox(
                      height: 20,
                    ),
                    Wetherinfo('Sunday', '12 °', 'assets/images/cloud1.png', 5),
                    SizedBox(
                      height: 20,
                    ),
                    Wetherinfo(
                        'Monday', '16 °', 'assets/images/cloudrain.png', 5),
                    SizedBox(
                      height: 20,
                    ),
                    Wetherinfo(
                        'Tuesday', '18 °', 'assets/images/cloudrain.png', 5),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}

Widget Wetherinfo(String data, String gradus, String img, double pad) {
  return Container(
    height: 70,
    padding: EdgeInsets.only(left: 25, right: pad),
    decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.4),
        borderRadius: BorderRadius.circular(10)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          data,
          style: MyStyles.robotoBold700,
        ),
        Row(
          children: [
            Text(
              gradus,
              style: MyStyles.robotoBold700,
            ),
            SizedBox(
              width: 5,
            ),
            Image(
              image: AssetImage(img),
              width: 70,
            )
          ],
        ),
      ],
    ),
  );
}
