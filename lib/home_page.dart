import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutters/explore.dart';
import 'package:flutters/explore_menu.dart';
import 'package:flutters/utils/colors.dart';
import 'package:flutters/utils/gradient.dart';
import 'package:flutters/utils/styles.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 60, left: 25, right: 25),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/Pattern.png'),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: Text(
                      "Find Your\nFavorite Food",
                      style: MyStyles.robotoBold700.copyWith(fontSize: 31),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Colors.white),
                    child: Image.asset('assets/images/notification.png'),
                  ),
                ],
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 267,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Mycolors.C_F9A84D.withOpacity(0.2)),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Mycolors.C_F9A84D,
                        ),
                        hintText: "what do you want to order",
                        hintStyle: TextStyle(color: Mycolors.C_F9A84D),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: Mycolors.C_F9A84D.withOpacity(0.1),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Image.asset('assets/images/settings.png'),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 150,
                width: 325,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    gradient: LinearGradient(
                        colors: [Mycolors.C_53E88B, Mycolors.C_15BE77]),
                    image: DecorationImage(
                        image: AssetImage('assets/images/card_pattern.png'),
                        fit: BoxFit.cover)),
                child: Stack(
                  children: [
                    Image.asset('assets/images/icecream.png'),
                    Positioned(
                      right: 20,
                      top: 30,
                      child: Text(
                        "Special Deal For\nOctober",
                        style: MyStyles.robotoBold700
                            .copyWith(color: Colors.white, fontSize: 17),
                      ),
                    ),
                    Positioned(
                        bottom: 30,
                        right: 62,
                        child: Container(
                          width: 82,
                          height: 32,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6))),
                          child: Center(
                            child: GradientText(
                              "Buy Now",
                              style: MyStyles.robotoBold700.copyWith(
                                fontSize: 10,
                                color: Colors.white,
                              ),
                              gradient: LinearGradient(colors: [
                                Mycolors.C_53E88B,
                                Mycolors.C_15BE77
                              ]),
                            ),
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      "Nearest Restaurant",
                      style: MyStyles.robotoBold700.copyWith(fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 8),
                    child: InkWell(
                      splashColor: Mycolors.C_F9A84D,
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Explore()));
                      },
                      child: Text(
                        "view more",
                        style: MyStyles.robotoRegular400.copyWith(
                            fontSize: 14,
                            color: Mycolors.C_F9A84D.withOpacity(0.5)),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 187,
                child: ListView(
                    shrinkWrap: true,
                    primary: false,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        height: 184,
                        width: 147,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(22))),
                        child: Column(
                          children: [
                            Image(image: AssetImage('assets/images/vegan.png')),
                            SizedBox(
                              height: 17,
                            ),
                            Text(
                              "Vegan Resto",
                              style:
                                  MyStyles.robotoBold700.copyWith(fontSize: 16),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              "12 Mins",
                              style: MyStyles.robotoRegular400
                                  .copyWith(color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 184,
                        width: 147,
                        padding: EdgeInsets.only(
                          left: 12,
                          right: 12,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(22))),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 4, left: 12, right: 12),
                              child: Image(
                                  image:
                                      AssetImage('assets/images/healthy.png')),
                            ),
                            SizedBox(
                              height: 17,
                            ),
                            Text(
                              "Healthy Food",
                              style:
                                  MyStyles.robotoBold700.copyWith(fontSize: 16),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              "8 Mins",
                              style: MyStyles.robotoRegular400
                                  .copyWith(color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 147,
                        width: 147,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(22))),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 12.0, right: 12, bottom: 3),
                              child: Image(
                                  image: AssetImage('assets/images/cook.png')),
                            ),
                            SizedBox(
                              height: 17,
                            ),
                            Text(
                              "Vegan Resto",
                              style:
                                  MyStyles.robotoBold700.copyWith(fontSize: 16),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "12 Mins",
                              style: MyStyles.robotoRegular400
                                  .copyWith(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 147,
                        width: 147,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(22))),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 12.0, right: 12, bottom: 3),
                              child: Image(
                                  image: AssetImage('assets/images/food4.png')),
                            ),
                            SizedBox(
                              height: 17,
                            ),
                            Text(
                              "Smart Resto",
                              style:
                                  MyStyles.robotoBold700.copyWith(fontSize: 16),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "8 Mins",
                              style: MyStyles.robotoRegular400
                                  .copyWith(color: Colors.grey),
                            ),
                          ],
                        ),
                      )
                    ]),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      "Popular Menu",
                      style: MyStyles.robotoBold700.copyWith(fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 8),
                    child: InkWell(
                      splashColor: Mycolors.C_F9A84D,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Explore_menu()));
                      },
                      child: Text(
                        "view more",
                        style: MyStyles.robotoRegular400.copyWith(
                            fontSize: 14,
                            color: Mycolors.C_F9A84D.withOpacity(0.5)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 87,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image(image: AssetImage('assets/images/grandl.png')),
                        SizedBox(
                          width: 12,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Green Nodle",
                              style:
                                  MyStyles.robotoBold700.copyWith(fontSize: 15),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Noodle Home",
                              style: MyStyles.robotoRegular400
                                  .copyWith(color: Colors.grey),
                            )
                          ],
                        )
                      ],
                    ),
                    Text("\$15",
                        style: MyStyles.robotoBold700
                            .copyWith(color: Mycolors.C_F9A84D, fontSize: 22))
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
