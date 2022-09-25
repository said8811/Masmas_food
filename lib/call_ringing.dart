import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutters/utils/styles.dart';

class Call extends StatefulWidget {
  const Call({super.key});

  @override
  State<Call> createState() => _CallState();
}

Icon icon = Icon(
  Icons.volume_up_rounded,
  color: Color(0xFF53E88B),
);
bool isMuted = false;
String text = "Ringing...";

class _CallState extends State<Call> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 167),
              decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage('assets/images/call_pattern.png'),
                      fit: BoxFit.cover)),
              child: Column(children: [
                Container(
                  width: 157,
                  child: Center(
                    child: Image(
                      image: AssetImage('assets/images/caller.png'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 59,
                ),
                Text(
                  "Richard Lewis",
                  style: MyStyles.robotoBold700.copyWith(fontSize: 25),
                ),
                SizedBox(
                  height: 23,
                ),
                Text(
                  text,
                  style: MyStyles.robotoRegular400
                      .copyWith(fontWeight: FontWeight.w100, fontSize: 19),
                ),
                SizedBox(
                  height: 177,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (isMuted == false) {
                              isMuted = !isMuted;
                              text = "Ringing...";
                              icon = Icon(
                                Icons.volume_up_rounded,
                                color: Color(0xFF53E88B),
                              );
                            } else {
                              text = "15.23 Min";
                              isMuted = !isMuted;
                              icon = Icon(Icons.volume_off_rounded);
                            }
                          });
                        },
                        child: icon,
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Color(0xFF53E88B),
                            backgroundColor: Colors.white,
                            side: BorderSide(color: Color(0xFF53E88B)),
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(29)),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            text = "Call finished";
                          });
                        },
                        child: Icon(Icons.cancel),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(29),
                        ),
                      )
                    ],
                  ),
                )
              ]))),
    );
  }
}
