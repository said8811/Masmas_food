import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutters/utils/styles.dart';

class Shipping extends StatelessWidget {
  const Shipping({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      padding: EdgeInsets.symmetric(vertical: 38, horizontal: 25),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/Pattern.png'),
              fit: BoxFit.cover)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          padding: EdgeInsets.only(left: 5),
          width: 52,
          child: Image(image: AssetImage('assets/images/back_key.png')),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(
            "Shipping",
            style: MyStyles.robotoBold700.copyWith(fontSize: 25),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 107,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(22)),
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12, top: 8),
                  child: Text(
                    "Order Location",
                    style: MyStyles.robotoRegular400
                        .copyWith(color: Colors.grey[400]),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      padding: EdgeInsets.only(
                        bottom: 20,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(13))),
                      child: Image.asset(
                        'assets/images/location.png',
                        width: 33,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 9),
                      child: Text(
                        "8502 Preston Rd. Inglewood,\n Maine 98380",
                        style: MyStyles.robotoBold700.copyWith(fontSize: 15),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 17,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Container(
            height: 121,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(22)),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12, top: 12),
                  child: Text(
                    "Deliver to",
                    style: MyStyles.robotoRegular400
                        .copyWith(color: Colors.grey[400]),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      padding: EdgeInsets.only(
                        bottom: 20,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(13))),
                      child: Image.asset(
                        'assets/images/location.png',
                        width: 33,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 9),
                      child: Text(
                        "4517 Washington Ave. Manchester,\n Kentucky 39495",
                        style: MyStyles.robotoBold700.copyWith(fontSize: 15),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Text(
                    "set location",
                    style: MyStyles.robotoRegular400
                        .copyWith(color: Color.fromARGB(255, 115, 195, 118)),
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
    )));
  }
}
