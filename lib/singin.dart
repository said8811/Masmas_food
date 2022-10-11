import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutters/signup_process.dart';
import 'package:flutters/utils/colors.dart';
import 'package:flutters/utils/gradient.dart';
import 'package:flutters/utils/styles.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

bool isDark = false;

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.only(left: 25, top: 47, right: 25).r,
        decoration: BoxDecoration(
            color: isDark ? Color.fromARGB(204, 15, 15, 15) : Colors.white24,
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
                "Sign Up for free",
                style: MyStyles.robotoBold700.copyWith(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 325.w,
              height: 57.h,
              padding: EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                border: Border.all(width: 0.1, color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color:
                    isDark ? Mycolors.C_F4F4F4.withOpacity(0.05) : Colors.white,
              ),
              child: Row(children: [
                Image(
                  image: AssetImage('assets/images/person_icon.png'),
                  width: 24,
                ),
                SizedBox(
                  width: 16.w,
                ),
                Text(
                  'Anamwp..|',
                  style: MyStyles.robotoRegular400
                      .copyWith(color: Colors.grey[400]),
                ),
              ]),
            ),
            SizedBox(
              height: 12.h,
            ),
            Container(
              width: 325.w,
              height: 57.h,
              padding: EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                border: Border.all(width: 0.1, color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color:
                    isDark ? Mycolors.C_F4F4F4.withOpacity(0.05) : Colors.white,
              ),
              child: Row(children: [
                Image(
                  image: AssetImage('assets/images/massage.png'),
                  width: 24,
                ),
                SizedBox(
                  width: 16.w,
                ),
                Text(
                  'Email',
                  style: MyStyles.robotoRegular400
                      .copyWith(color: Colors.grey[400]),
                ),
              ]),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              width: 325.w,
              height: 57.h,
              padding: EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                border: Border.all(width: 0.1, color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color:
                    isDark ? Mycolors.C_F4F4F4.withOpacity(0.05) : Colors.white,
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image(
                          image: AssetImage('assets/images/password.png'),
                          width: 24,
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        Text(
                          'Password',
                          style: MyStyles.robotoRegular400
                              .copyWith(color: Colors.grey[400]),
                        ),
                      ],
                    ),
                    Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: SvgPicture.asset(
                          'assets/svg/eye.svg',
                          color: Color(0xFF200E32),
                        ))
                  ]),
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              children: [
                Container(
                  width: 25.w,
                  height: 25.h,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Mycolors.C_53E88B, Mycolors.C_15BE77]),
                      borderRadius: BorderRadius.all(Radius.circular(29))),
                  child: Image(
                    image: AssetImage('assets/images/vector.png'),
                    width: 8.w,
                    height: 5.5.h,
                  ),
                ),
                SizedBox(
                  width: 8.w,
                ),
                Text(
                  "Keep me Signed in",
                  style: MyStyles.robotoRegular400
                      .copyWith(color: Colors.grey[400]),
                ),
              ],
            ),
            SizedBox(
              height: 12.h,
            ),
            Row(
              children: [
                Container(
                  width: 25.w,
                  height: 25.h,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Mycolors.C_53E88B, Mycolors.C_15BE77]),
                      borderRadius: BorderRadius.all(Radius.circular(29))),
                  child: Image(
                    image: AssetImage('assets/images/vector.png'),
                    width: 8.w,
                    height: 5.5.h,
                  ),
                ),
                SizedBox(
                  width: 8.w,
                ),
                Text(
                  "Email Me about Special Pricing",
                  style: MyStyles.robotoRegular400
                      .copyWith(color: Colors.grey[400]),
                ),
              ],
            ),
            SizedBox(
              height: 43.h,
            ),
            Center(
              child: InkWell(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUpProcees()));
                },
                child: Container(
                  width: 175.w,
                  height: 57.h,
                  padding: EdgeInsets.only(),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(18.r)),
                      gradient: LinearGradient(
                          colors: [Mycolors.C_53E88B, Mycolors.C_15BE77])),
                  child: Center(
                    child: Text(
                      "Create account",
                      style: MyStyles.robotoBold700
                          .copyWith(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Center(
              child: GradientText(
                "already have account?",
                style: MyStyles.robotoBold700,
                gradient: LinearGradient(
                    colors: [Mycolors.C_53E88B, Mycolors.C_15BE77]),
              ),
            )
          ],
        ),
      )),
    );
    ;
  }
}
