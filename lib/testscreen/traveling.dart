import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutters/testscreen/gridview.dart';
import 'package:flutters/utils/styles.dart';

class Travel extends StatefulWidget {
  const Travel({super.key});

  @override
  State<Travel> createState() => _TravelState();
}

class _TravelState extends State<Travel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: const EdgeInsets.all(0),
                child: Container(
                  padding: EdgeInsets.only(left: 12),
                  width: double.infinity,
                  decoration: const BoxDecoration(color: Colors.amber),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 27),
                        child: const Image(
                          image: AssetImage('assets/images/bicycle.png'),
                          width: 70,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Traveling",
                        style: MyStyles.robotoBold700,
                      ),
                      Text("www.travels.com")
                    ],
                  ),
                )),
            ListTile(
              onTap: () {},
              title: Text(
                "Home",
                style: MyStyles.robotoBold700,
              ),
              leading: Icon(Icons.home),
            ),
            ListTile(
              onTap: () {},
              title: Text(
                "Cycling",
                style: MyStyles.robotoBold700,
              ),
              leading: Icon(Icons.motorcycle_outlined),
            ),
            ListTile(
              onTap: () {},
              title: Text(
                "Bus",
                style: MyStyles.robotoBold700,
              ),
              leading: Icon(Icons.bus_alert_outlined),
            ),
            ListTile(
              onTap: () {},
              title: Text(
                "Plane",
                style: MyStyles.robotoBold700,
              ),
              leading: Icon(Icons.airplane_ticket_outlined),
            ),
            Text(
              "________________________________________________",
              style: TextStyle(color: Colors.grey.withOpacity(0.5)),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Profile",
                style: MyStyles.robotoRegular400
                    .copyWith(color: Colors.grey[400], fontSize: 16),
              ),
            ),
            ListTile(
              onTap: () {},
              title: Text(
                "Login",
                style: MyStyles.robotoBold700,
              ),
              leading: Icon(Icons.login_rounded),
            ),
            Text(
              "________________________________________________",
              style: TextStyle(color: Colors.grey.withOpacity(0.5)),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Communicate",
                style: MyStyles.robotoRegular400
                    .copyWith(color: Colors.grey[400], fontSize: 16),
              ),
            ),
            ListTile(
              onTap: () {},
              title: Text(
                "Share",
                style: MyStyles.robotoBold700,
              ),
              leading: Icon(Icons.share),
            ),
            ListTile(
                onTap: () {},
                title: Text("Rate us"),
                leading: Icon(Icons.rate_review))
          ],
        ),
      ),
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Traveling",
                        style: MyStyles.robotoBold700.copyWith(fontSize: 25),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Start a new Journey",
                        style: MyStyles.robotoRegular400
                            .copyWith(color: Colors.grey),
                      )
                    ],
                  ),
                  Image(
                    image: AssetImage('assets/images/bicycle.png'),
                    width: 100,
                  )
                ],
              ),
              Container(
                child: Expanded(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              color: Colors.white54,
                              padding: EdgeInsets.only(left: 12, right: 12),
                              width: 120,
                              height: 120,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12),
                                    child: Image(
                                        image: AssetImage(
                                            'assets/images/walk.png')),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    "Walking",
                                    style: MyStyles.robotoBold700
                                        .copyWith(fontSize: 25),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              color: Colors.white54,
                              padding: EdgeInsets.only(left: 12, right: 12),
                              width: 140,
                              height: 140,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12),
                                    child: Image(
                                        image: AssetImage(
                                            'assets/images/boat.webp')),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    "Boating",
                                    style: MyStyles.robotoBold700
                                        .copyWith(fontSize: 25),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              color: Colors.white54,
                              padding: EdgeInsets.only(left: 12, right: 12),
                              width: 120,
                              height: 120,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12),
                                    child: Image(
                                        image: AssetImage(
                                            'assets/images/bus.png')),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    "Bus",
                                    style: MyStyles.robotoBold700
                                        .copyWith(fontSize: 25),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              color: Colors.white54,
                              padding: EdgeInsets.only(left: 12, right: 12),
                              width: 140,
                              height: 140,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12),
                                    child: Image(
                                        image: AssetImage(
                                            'assets/images/train.png')),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    "Train",
                                    style: MyStyles.robotoBold700
                                        .copyWith(fontSize: 25),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Fields(AssetImage('assets/images/plane.jpg'), "Plane")
                    ],
                  ),
                ),
              )
              //Image.asset('assets/images/walk.png')
            ],
          )),
    );
  }
}

Widget Fields(AssetImage img, String txt) {
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          color: Colors.white54,
          padding: EdgeInsets.only(left: 12, right: 12),
          width: 120,
          height: 120,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Image(
                  image: img,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                txt,
                style: MyStyles.robotoBold700.copyWith(fontSize: 25),
              )
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          color: Colors.white54,
          padding: EdgeInsets.only(left: 12, right: 12),
          width: 140,
          height: 140,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Image(image: img),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                txt,
                style: MyStyles.robotoBold700.copyWith(fontSize: 25),
              )
            ],
          ),
        ),
      )
    ],
  );
}
