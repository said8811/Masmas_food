import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutters/set_location.dart';
import 'package:flutters/utils/styles.dart';

class Upload_p extends StatefulWidget {
  const Upload_p({super.key});

  @override
  State<Upload_p> createState() => _Upload_pState();
}

bool isDark = false;

class _Upload_pState extends State<Upload_p> {
  @override
  Widget build(BuildContext context) {
    isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 38, vertical: 25),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/Pattern.png'),
                  fit: BoxFit.cover)),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 52,
                decoration: BoxDecoration(),
                child: Image(
                  image: AssetImage('assets/images/back_key.png'),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text('Upload Your Photo\nProfile',
                style: MyStyles.robotoBold700.copyWith(fontSize: 25)),
            SizedBox(
              height: 19,
            ),
            Text(
                "This data will be displayed in your account\nprofile for security",
                style: MyStyles.robotoRegular400),
            SizedBox(
              height: 44,
            ),
            Center(
              child: Container(
                width: 251,
                height: 260,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/preview.png'),
                      fit: BoxFit.cover),
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                child: Container(
                  height: 20,
                  width: 31,
                  padding: EdgeInsets.only(left: 210, bottom: 210, right: 10),
                  child: Image.asset(
                    'assets/images/x.png',
                    width: 2,
                    height: 2,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 159),
              child: Center(
                child: Container(
                  height: 57,
                  width: 157,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(0))),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Set_Location()));
                    },
                    child: Text(
                      "Next",
                      style: TextStyle(color: Colors.white, fontSize: 16),
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
                                    borderRadius: BorderRadius.circular(25),
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
