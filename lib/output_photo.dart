import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutters/payments.dart';
import 'package:flutters/upload_preview.dart';
import 'package:flutters/utils/colors.dart';

class Output extends StatefulWidget {
  const Output({super.key});

  @override
  State<Output> createState() => _OutputState();
}

bool isDark = false;

class _OutputState extends State<Output> {
  @override
  Widget build(BuildContext context) {
    isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 38, vertical: 25).r,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/Pattern.png'),
                  fit: BoxFit.cover)),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
              'Upload Your Photo\nProfile',
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
            Center(
              child: Container(
                height: 129.h,
                width: 342.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(0))),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Image.asset(
                    'assets/images/from_galery.png',
                    width: 84.w,
                    height: 88.h,
                  ),
                  style: ButtonStyle(
                      overlayColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        isDark
                            ? Mycolors.C_F4F4F4.withOpacity(0.1)
                            : Colors.white,
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.r),
                              side: BorderSide(
                                color: isDark
                                    ? Mycolors.C_F4F4F4.withOpacity(0.1)
                                    : Colors.white,
                              )))),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Center(
              child: Container(
                height: 129.h,
                width: 325.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(0))),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Image.asset(
                    'assets/images/take.png',
                    width: 84.w,
                    height: 88.h,
                  ),
                  style: ButtonStyle(
                      overlayColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        isDark
                            ? Mycolors.C_F4F4F4.withOpacity(0.1)
                            : Colors.white,
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.r),
                              side: BorderSide(
                                color: isDark
                                    ? Mycolors.C_F4F4F4.withOpacity(0.1)
                                    : Colors.white,
                              )))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 165).r,
              child: Center(
                child: Container(
                  height: 57.h,
                  width: 157.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(0))),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Upload_p()));
                    },
                    child: Text(
                      "Next",
                      style: TextStyle(color: Colors.white, fontSize: 16.sp),
                    ),
                    style: ButtonStyle(
                        overlayColor:
                            MaterialStateProperty.all<Color>(Color(0xFF15BE77)),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFF53E88B)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.r),
                                    side: BorderSide(color: Colors.white)))),
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
