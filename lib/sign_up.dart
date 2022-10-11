import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutters/call_ringing.dart';
import 'package:flutters/utils/styles.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

bool isDark = false;

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 31),
          decoration: BoxDecoration(
              color: isDark ? Color.fromARGB(204, 15, 15, 15) : Colors.white,
              image: DecorationImage(
                  image: AssetImage('assets/images/paterndark.png'),
                  fit: BoxFit.cover)),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Center(
                child: Container(
                    width: 162,
                    height: 172,
                    margin: EdgeInsets.only(top: 227),
                    child:
                        Image(image: AssetImage('assets/images/succes.png')))),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text('Congrats!',
                    style: MyStyles.robotoBold700
                        .copyWith(fontSize: 25, color: Color(0xFF53E88B))),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text("Your Profile is Ready to use",
                    style: MyStyles.robotoBold700.copyWith(fontSize: 23)),
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Call()));
                    },
                    child: Text(
                      "Try order",
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
            ),
          ]),
        ),
      ),
    );
  }
}
