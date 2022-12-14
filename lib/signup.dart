import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutters/singin.dart';
import 'package:flutters/utils/colors.dart';
import 'package:flutters/utils/gradient.dart';
import 'package:flutters/utils/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

bool isDark = false;

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: SingleChildScrollView(
            child: Container(
              padding:
                  EdgeInsets.only(left: 25, top: 47, right: 25, bottom: 50).r,
              decoration: BoxDecoration(
                  color:
                      isDark ? Color.fromARGB(204, 15, 15, 15) : Colors.white24,
                  image: DecorationImage(
                      image: AssetImage('assets/images/paterndark.png'),
                      fit: BoxFit.cover)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image(
                        image: AssetImage('assets/images/masmas.png'),
                        width: 175.w,
                      ),
                    ),
                    Center(
                      child: Container(
                        child: GradientText(
                          'MasmasFood',
                          style: MyStyles.robotoBold700.copyWith(fontSize: 40),
                          gradient: LinearGradient(
                              colors: [Mycolors.C_53E88B, Mycolors.C_15BE77]),
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Deliever Favorite Food",
                        style: MyStyles.robotoBold700.copyWith(fontSize: 14),
                      ),
                    ),
                    SizedBox(
                      height: 60.h,
                    ),
                    Center(
                      child: Text(
                        "Login To Your Account",
                        style: MyStyles.robotoBold700.copyWith(fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Center(
                      child: Container(
                        width: 325.w,
                        height: 57.h,
                        decoration: BoxDecoration(
                            color: isDark
                                ? Mycolors.C_F4F4F4.withOpacity(0.05)
                                : Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: TextField(
                            style: TextStyle(
                                color: isDark ? Colors.black54 : Colors.white),
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Email',
                                hintStyle: TextStyle(color: Colors.grey[400])),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Center(
                      child: Container(
                        width: 325.w,
                        height: 57.h,
                        decoration: BoxDecoration(
                            color: isDark
                                ? Mycolors.C_F4F4F4.withOpacity(0.05)
                                : Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: TextField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Password',
                                hintStyle: TextStyle(color: Colors.grey[400])),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(
                        "Or Continue with",
                        style: MyStyles.robotoBold700.copyWith(fontSize: 14.sp),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 152,
                              height: 57,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                                color: isDark
                                    ? Mycolors.C_F4F4F4.withOpacity(0.05)
                                    : Colors.white,
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 18.0),
                                    child: Image(
                                      image: AssetImage(
                                          'assets/images/facebook.png'),
                                      width: 25,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 13.w,
                                  ),
                                  Text(
                                    "Facebook",
                                    style: MyStyles.robotoBold700
                                        .copyWith(fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 152,
                              height: 57,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                                color: isDark
                                    ? Mycolors.C_F4F4F4.withOpacity(0.05)
                                    : Colors.white,
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 18.0),
                                    child: Image(
                                      image: AssetImage(
                                          'assets/images/google.png'),
                                      width: 25,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 13.w,
                                  ),
                                  Text(
                                    "Google",
                                    style: MyStyles.robotoBold700
                                        .copyWith(fontSize: 14),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: GradientText(
                        "Forgot Your Password?",
                        style: MyStyles.robotoRegular400.copyWith(fontSize: 14),
                        gradient: LinearGradient(
                            colors: [Mycolors.C_53E88B, Mycolors.C_15BE77]),
                      ),
                    ),
                    SizedBox(
                      height: 36,
                    ),
                    Center(
                      child: InkWell(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignIn()));
                        },
                        child: Container(
                          width: 137.w,
                          height: 57.h,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18.r)),
                              gradient: LinearGradient(colors: [
                                Mycolors.C_53E88B,
                                Mycolors.C_15BE77
                              ])),
                          child: Center(
                            child: Text(
                              "Login",
                              style: MyStyles.robotoBold700
                                  .copyWith(fontSize: 16, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    )
                  ]),
            ),
          )),
    );
  }
}
