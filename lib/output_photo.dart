import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Output extends StatelessWidget {
  const Output({super.key});

  @override
  Widget build(BuildContext context) {
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
              onTap: () {},
              child: Container(
                width: 52,
                decoration: BoxDecoration(),
                child: Image(
                  image: AssetImage('assets/images/back_key.png'),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Upload Your Photo\nProfile',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: 19,
            ),
            Text(
              "This data will be displayed in your account\nprofile for security",
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                height: 147,
                width: 342,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(0))),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Image.asset(
                    'assets/images/from_galery.png',
                    width: 84,
                    height: 88,
                  ),
                  style: ButtonStyle(
                      overlayColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                              side: BorderSide(color: Colors.white)))),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                height: 129,
                width: 325,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(0))),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Image.asset(
                    'assets/images/take.png',
                    width: 84,
                    height: 88,
                  ),
                  style: ButtonStyle(
                      overlayColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                              side: BorderSide(color: Colors.white)))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 165),
              child: Center(
                child: Container(
                  height: 57,
                  width: 157,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(0))),
                  child: ElevatedButton(
                    onPressed: () {},
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
