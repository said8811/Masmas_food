import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutters/utils/styles.dart';
import 'package:flutters/weather-app/secondpage.dart';

class HomeWeather extends StatefulWidget {
  const HomeWeather({super.key});

  @override
  State<HomeWeather> createState() => _HomeWeatherState();
}

class _HomeWeatherState extends State<HomeWeather> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Container(
                          width: 30, height: 30, child: Icon(Icons.search)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Container(
                          width: 30,
                          height: 35,
                          child: const Icon(Icons.menu_rounded)),
                    )
                  ],
                ),
                SizedBox(
                  height: 26,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 22.0),
                  child: Text(
                    "Stockholm,\nSweden",
                    style: MyStyles.robotoBold700.copyWith(fontSize: 25),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 22),
                  child: Text(
                    "Tue, Jun 30",
                    style: MyStyles.robotoRegular400.copyWith(color: Colors.grey),
                  ),
                ),
                Center(
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage('assets/images/cloud.png'),
                        width: 240,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Column(
                          children: [
                            Stack(children: [
                              Container(
                                width: 100,
                                height: 90,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Text(
                                    "19",
                                    style: MyStyles.robotoBold700.copyWith(
                                      fontSize: 63,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                  top: 0,
                                  right: 0,
                                  child: Image(
                                      image:
                                          AssetImage('assets/images/degree.png')))
                            ]),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Text(
                                "Rainy",
                                style: MyStyles.robotoRegular400
                                    .copyWith(fontSize: 25),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.only(right: 28),
                    height: 70,
                    width: 320,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image(
                              image: AssetImage('assets/images/rain.png'),
                              height: 70,
                            ),
                            Text("RainFall")
                          ],
                        ),
                        Text("3cm")
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.only(right: 28),
                    height: 70,
                    width: 320,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.3),
                        borderRadius: BorderRadius.all(Radius.circular(14))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image(
                              image: AssetImage('assets/images/wind.png'),
                              height: 70,
                            ),
                            Text("Wind")
                          ],
                        ),
                        Text("19km/h")
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.only(right: 28),
                    height: 70,
                    width: 320,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.3),
                        borderRadius: BorderRadius.all(Radius.circular(14))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(
                                  left: 14,
                                ),
                                child: Center(
                                  child: Container(
                                    width: 32,
                                    height: 32,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(7),
                                      ),
                                      color: Colors.white,
                                    ),
                                    child:
                                        Image.asset('assets/images/branch.png'),
                                  ),
                                )),
                            SizedBox(
                              width: 12,
                            ),
                            Text("Humidty")
                          ],
                        ),
                        Text("64%")
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Today",
                            style: MyStyles.robotoBold700,
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            "Tomorrow",
                            style: MyStyles.robotoRegular400
                                .copyWith(color: Color(0xFFD6996B)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SecondP()));
                              });
                            },
                            child: Text(
                              "Next days  >",
                              style: MyStyles.robotoRegular400
                                  .copyWith(color: Color(0xFFD6996B)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 97,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Wether("11:00", 'assets/images/cloud1.png', '20 °'),
                      SizedBox(
                        width: 12,
                      ),
                      Container(
                        height: 56,
                        width: 52,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "now",
                                style: MyStyles.robotoBold700,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Image(
                                  image:
                                      AssetImage('assets/images/cloudsun.png')),
                              Text(
                                "19 °",
                                style: MyStyles.robotoBold700,
                              )
                            ]),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Wether("13:00", 'assets/images/sun.png', '21 °'),
                      SizedBox(
                        width: 12,
                      ),
                      Wether("14:00", 'assets/images/sun.png', '20 °'),
                      SizedBox(
                        width: 12,
                      ),
                      Wether("15:00", 'assets/images/cloud1.png', '20 °'),
                      SizedBox(
                        width: 12,
                      ),
                      Wether("16:00", 'assets/images/cloud1.png', '19 °'),
                      SizedBox(
                        width: 12,
                      ),
                      Wether("17:00", 'assets/images/cloud1.png', '18 °'),
                      SizedBox(
                        width: 12,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}

Widget Wether(String time, String img, String gradus) {
  return Container(
    height: 50,
    width: 52,
    decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.3),
        borderRadius: BorderRadius.circular(30)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          time,
          style: TextStyle(color: Colors.grey),
        ),
        SizedBox(
          height: 5,
        ),
        Image(image: AssetImage(img)),
        Text(
          gradus,
          style: MyStyles.robotoBold700,
        )
      ],
    ),
  );
}
