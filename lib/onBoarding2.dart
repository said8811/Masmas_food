import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutters/onBoarding3.dart';
import 'package:flutters/shipping.dart';
import 'package:flutters/utils/colors.dart';
import 'package:flutters/utils/styles.dart';

class Onb2 extends StatefulWidget {
  const Onb2({super.key});

  @override
  State<Onb2> createState() => _Onb2State();
}

class _Onb2State extends State<Onb2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 56).r,
              child: Image(
                image: AssetImage('assets/images/masmas2.png'),
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 38.h,
            ),
            Center(
              child: Text(
                "Find your  Comfort\n       \tFood here",
                style: MyStyles.robotoBold700.copyWith(fontSize: 22.sp),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Center(
              child: Text(
                "Here You Can find a chef or dish for every\n                 taste and color. Enjoy!",
                style: MyStyles.robotoRegular400.copyWith(fontSize: 12.sp),
              ),
            ),
            SizedBox(
              height: 42.h,
            ),
            InkWell(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => OnBoarding3()));
              },
              child: Container(
                width: 137.w,
                height: 57.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(18.r)),
                    gradient: LinearGradient(
                        colors: [Mycolors.C_53E88B, Mycolors.C_15BE77])),
                child: Center(
                  child: Text(
                    "Next",
                    style: MyStyles.robotoBold700
                        .copyWith(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
