import 'package:flutter/material.dart';
import 'package:flutters/call_ringing.dart';
import 'package:flutters/edit_payments.dart';
import 'package:flutters/onBording.dart';
import 'package:flutters/output_photo.dart';
import 'package:flutters/payments.dart';
import 'package:flutters/set_location.dart';
import 'package:flutters/shipping.dart';
import 'package:flutters/sign_up.dart';
import 'package:flutters/sinfishi.dart';
import 'package:flutters/upload_preview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(const MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: child,
        );
      },
      child: OnBoarding(),
    );
  }
}
