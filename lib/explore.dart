import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutters/utils/colors.dart';
import 'package:flutters/utils/styles.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        padding: EdgeInsets.only(top: 60, left: 25, right: 25),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/Pattern.png'),
                fit: BoxFit.cover)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                width: 325,
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
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Popular Restaurant",
            style: MyStyles.robotoBold700.copyWith(fontSize: 15),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Expanded(
                child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Row(
                  children: [
                    Container(
                      height: 184,
                      width: 147,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(22))),
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
                          borderRadius: BorderRadius.all(Radius.circular(22))),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                bottom: 4, left: 12, right: 12),
                            child: Image(
                                image: AssetImage('assets/images/healthy.png')),
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
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      height: 187,
                      width: 147,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(22))),
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
                      height: 187,
                      width: 147,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(22))),
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
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      height: 187,
                      width: 147,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(22))),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 12.0, right: 12, bottom: 3),
                            child: Image(
                                image: AssetImage('assets/images/cheff.png')),
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
                      height: 187,
                      width: 147,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(22))),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 19.0, right: 19, bottom: 1),
                            child: Image(
                                image: AssetImage('assets/images/cheff2.png')),
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
                  ],
                ),
              ],
            )),
          )
        ]),
      ),
    ));
  }
}
