import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutters/instagram/instagram.dart';
import 'package:flutters/utils/styles.dart';

class Restuorant extends StatefulWidget {
  const Restuorant({super.key});

  @override
  State<Restuorant> createState() => _RestuorantState();
}

List emojis = ["🍔", "🍖", "🥗", "🍨", "🍾"];

class _RestuorantState extends State<Restuorant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.only(left: 25, right: 0, top: 35),
        decoration: BoxDecoration(color: Colors.grey.withOpacity(0.7)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hi Zesan",
                    style: MyStyles.robotoLight200.copyWith(fontSize: 18),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/story3.png')),
                        borderRadius: BorderRadius.circular(25)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "What do you want\nfor dinner 🍽",
              style: MyStyles.robotoBold700.copyWith(fontSize: 18),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
                height: 35,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: emojis.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Types(emojis[index]);
                    })),
            SizedBox(
              height: 40,
            ),
            Text(
              'Recommended',
              style: MyStyles.robotoBold700.copyWith(fontSize: 18),
            ),
            PAges()
          ],
        ),
      )),
    );
  }

  Widget Types(String emoji) {
    return Container(
      width: 80,
      height: 40,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Center(child: Text(emoji)),
    );
  }

  Widget PAges() {
    return Container(
      height: 200,
      width: 130,
      color: Colors.white,
      child: Stack(
        children: [
          Positioned(
            top: -5,
            child: Center(
              child: Image.asset(
                "assets/images/meal.png",
                width: 100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
