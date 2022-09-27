import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutters/output_photo.dart';
import 'package:flutters/signup.dart';
import 'package:flutters/utils/colors.dart';
import 'package:flutters/utils/styles.dart';

class SignUpProcess extends StatelessWidget {
  const SignUpProcess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 38, vertical: 25).r,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/Pattern.png'),
                fit: BoxFit.cover)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          InkWell(
            borderRadius: BorderRadius.all(Radius.circular(22.r)),
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: 52.w,
              decoration: BoxDecoration(),
              child: Image(
                image: AssetImage('assets/images/back_key.png'),
              ),
            ),
          ),
          SizedBox(height: 20.h),
          Text(
            'Fill in your bio to get\nstarted',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 25.sp,
            ),
          ),
          SizedBox(
            height: 19.h,
          ),
          Text(
            "This data will be displayed in your account\nprofile for security",
            style: TextStyle(fontSize: 14.sp),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            width: 325.w,
            height: 57.h,
            padding: EdgeInsets.only(left: 20, top: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Colors.white),
            child: Text(
              "First Name",
              style:
                  MyStyles.robotoRegular400.copyWith(color: Colors.grey[400]),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            width: 325.w,
            height: 57.h,
            padding: EdgeInsets.only(left: 20, top: 20).r,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Colors.white),
            child: Text(
              "Last Name",
              style:
                  MyStyles.robotoRegular400.copyWith(color: Colors.grey[400]),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            width: 325.w,
            height: 57.h,
            padding: EdgeInsets.only(left: 20, top: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15).r),
                color: Colors.white),
            child: Text(
              "Mobile number",
              style:
                  MyStyles.robotoRegular400.copyWith(color: Colors.grey[400]),
            ),
          ),
          SizedBox(
            height: 220,
          ),
          Center(
            child: InkWell(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Output())));
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
            ),
          ),
        ]),
      )),
    );
  }
}
