import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutters/sign_up.dart';
import 'package:flutters/signup.dart';
import 'package:flutters/utils/colors.dart';
import 'package:flutters/utils/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoarding3 extends StatefulWidget {
  const OnBoarding3({super.key});

  @override
  State<OnBoarding3> createState() => _OnBoarding3State();
}

class _OnBoarding3State extends State<OnBoarding3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 87.r),
              child: Image(
                image: AssetImage('assets/images/masmas3.png'),
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 59.h,
            ),
            Center(
              child: Text(
                "Food Ninja is Where Your\n      Comfort Food Lives",
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
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SignUp()));
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
