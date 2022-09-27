import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutters/sign_up.dart';
import 'package:flutters/utils/styles.dart';

class Setlocation extends StatelessWidget {
  const Setlocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 38, vertical: 17),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/Pattern.png'),
                  fit: BoxFit.cover)),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: InkWell(
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
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Set Your Location',
                  style: MyStyles.robotoBold700.copyWith(fontSize: 25)),
            ),
            SizedBox(
              height: 19,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  "This data will be displayed in your account\nprofile for security",
                  style: MyStyles.robotoRegular400),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
                child: Container(
              padding: EdgeInsets.only(left: 10, top: 20),
              width: 342,
              height: 147,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                          width: 33,
                          decoration: BoxDecoration(),
                          child: Image(
                              image: AssetImage('assets/images/location.png'))),
                      SizedBox(
                        width: 14,
                      ),
                      Text(
                        "Your location",
                        style: MyStyles.robotoBold700,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 27,
                  ),
                  Container(
                    width: 322,
                    height: 57,
                    decoration: BoxDecoration(
                        color: Color(0xFFF6F6F6),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Center(
                      child: Text(
                        "Set Location",
                        style: MyStyles.robotoBold700.copyWith(fontSize: 14),
                      ),
                    ),
                  )
                ],
              ),
            )),
            SizedBox(
              height: 128,
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Signup()));
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
