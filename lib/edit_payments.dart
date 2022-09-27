import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutters/shipping.dart';
import 'package:flutters/utils/styles.dart';

class Editpayment extends StatelessWidget {
  const Editpayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 38, vertical: 25),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/Patter.png"),
                fit: BoxFit.cover)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: 52,
              child: Image(image: AssetImage('assets/images/back_key.png')),
            ),
          ),
          SizedBox(
            height: 19,
          ),
          Text(
            "Payments",
            style: MyStyles.robotoBold700.copyWith(fontSize: 25),
          ),
          SizedBox(
            height: 42,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Shipping()));
            },
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              height: 73,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(22)),
                  color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(
                    image: AssetImage('assets/images/paypal.png'),
                    width: 86,
                  ),
                  Text(
                    "2121 6352 8465 ****",
                    style: MyStyles.robotoRegular400,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 17,
          ),
          Container(
            height: 73,
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(22)),
                color: Color(0xFFF6F6F6)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(
                  image: AssetImage('assets/images/visa.png'),
                  width: 50,
                ),
                Text(
                  "2121 6352 8465 ****",
                  style: MyStyles.robotoRegular400
                      .copyWith(color: Colors.grey[400]),
                )
              ],
            ),
          ),
          SizedBox(
            height: 17,
          ),
          Container(
            height: 73,
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(22)),
                color: Color(0xFFF6F6F6)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(
                  image: AssetImage('assets/images/payoneer.png'),
                  width: 83,
                ),
                Text(
                  "2121 6352 8465 ****",
                  style: MyStyles.robotoRegular400
                      .copyWith(color: Colors.grey[400]),
                )
              ],
            ),
          ),
        ]),
      )),
    );
  }
}
