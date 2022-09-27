import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutters/utils/colors.dart';
import 'package:flutters/utils/styles.dart';

class Explore_menu extends StatefulWidget {
  const Explore_menu({super.key});

  @override
  State<Explore_menu> createState() => _Explore_menuState();
}

class _Explore_menuState extends State<Explore_menu> {
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
          Text(
            "Popular Menu",
            style: MyStyles.robotoBold700.copyWith(fontSize: 15),
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
                    Image(image: AssetImage('assets/images/pancake.png')),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Herbal Pancake",
                          style: MyStyles.robotoBold700.copyWith(fontSize: 15),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Warung Herbal",
                          style: MyStyles.robotoRegular400
                              .copyWith(color: Colors.grey),
                        )
                      ],
                    )
                  ],
                ),
                Text("\$7",
                    style: MyStyles.robotoBold700
                        .copyWith(color: Mycolors.C_F9A84D, fontSize: 22))
              ],
            ),
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
                    Image(image: AssetImage('assets/images/salad.png')),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Fruit Salad",
                          style: MyStyles.robotoBold700.copyWith(fontSize: 15),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Wije Resto",
                          style: MyStyles.robotoRegular400
                              .copyWith(color: Colors.grey),
                        )
                      ],
                    )
                  ],
                ),
                Text("\$5",
                    style: MyStyles.robotoBold700
                        .copyWith(color: Mycolors.C_F9A84D, fontSize: 22))
              ],
            ),
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
                          style: MyStyles.robotoBold700.copyWith(fontSize: 15),
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
        ]),
      ),
    ));
  }
}
