import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutters/onBoarding2.dart';
import 'package:flutters/shipping.dart';
import 'package:flutters/utils/colors.dart';
import 'package:flutters/utils/gradient.dart';
import 'package:flutters/utils/styles.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

bool isDark = false;

class _OnBoardingState extends State<OnBoarding> {
  @override
  void initState() {
    super.initState();
    _navigatedhome();
  }

  _navigatedhome() async {
    Future.delayed(
        Duration(seconds: 3),
        () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Onb2(),
            )));
  }

  @override
  Widget build(BuildContext context) {
    isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
        body: SafeArea(
      child: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Onb2()));
          },
          child: Container(
            decoration: BoxDecoration(
                color: isDark ? Color.fromARGB(204, 15, 15, 15) : Colors.white,
                image: DecorationImage(
                    image: AssetImage("assets/images/paterndark.png"),
                    fit: BoxFit.cover)),
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Image(
                        image: AssetImage('assets/images/masmas.png'),
                        width: 175.w,
                      ),
                    ),
                    Container(
                      child: GradientText(
                        'MasmasFood',
                        style: MyStyles.robotoBold700.copyWith(fontSize: 40),
                        gradient: LinearGradient(
                            colors: [Mycolors.C_53E88B, Mycolors.C_15BE77]),
                      ),
                    ),
                    Text(
                      "Deliever Favorite Food",
                      style: MyStyles.robotoBold700.copyWith(fontSize: 14),
                    ),
                  ]),
            ),
          )),
    ));
  }
}
