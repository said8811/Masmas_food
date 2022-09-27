import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutters/call_ringing.dart';
import 'package:flutters/utils/styles.dart';

class Mywidget extends StatefulWidget {
  const Mywidget({super.key});

  @override
  State<Mywidget> createState() => _MywidgetState();
}

class _MywidgetState extends State<Mywidget> {
  double price1 = 20.90;
  String price2 = "32.00";
  String price3 = "22.90";
  String price4 = "30.90";
  String number = '1';
  String number2 = '1';
  String number3 = '1';
  String number4 = '1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text("My Cart"),
        backgroundColor: Colors.white12,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 12, top: 20, right: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: Image(
                    image: AssetImage('assets/images/girl.png'),
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Text(
                        "Peace Skull shirt",
                        style: MyStyles.robotoBold700.copyWith(fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Black - L",
                      style: TextStyle(color: Colors.grey[400]),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            price1.toString().substring(0, 5),
                            style:
                                MyStyles.robotoBold700.copyWith(fontSize: 25),
                          ),
                          SizedBox(
                            width: 120,
                          ),
                          Row(
                            children: [
                              TextButton(
                                  onPressed: () {
                                    setState(() {
                                      if (int.parse(number) != 0) {
                                        number =
                                            (int.parse(number) - 1).toString();
                                        price1 = (price1 - 20);
                                      }
                                    });
                                  },
                                  // ignore: prefer_const_constructors
                                  child: Padding(
                                    padding: const EdgeInsets.only(),
                                    child: Text(
                                      '-',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black),
                                    ),
                                  )),
                              Text(number),
                              TextButton(
                                  onPressed: () {
                                    setState(() {
                                      number =
                                          (int.parse(number) + 1).toString();
                                      price1 = ((price1) + 20);
                                    });
                                  },
                                  // ignore: prefer_const_constructors
                                  child: Padding(
                                    padding: const EdgeInsets.only(),
                                    child: Text(
                                      '+',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black),
                                    ),
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: Image(
                    image: AssetImage('assets/images/girl2.png'),
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Text(
                        "Myrtle Beach Sweater",
                        style: MyStyles.robotoBold700.copyWith(fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Blue - L",
                      style: TextStyle(color: Colors.grey[400]),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "32.00",
                          style: MyStyles.robotoBold700.copyWith(fontSize: 25),
                        ),
                        SizedBox(
                          width: 120,
                        ),
                        Row(
                          children: [
                            TextButton(
                                onPressed: () {
                                  setState(() {
                                    if (int.parse(number2) != 0) {
                                      number2 =
                                          (int.parse(number2) - 1).toString();
                                    }
                                  });
                                },
                                // ignore: prefer_const_constructors
                                child: Padding(
                                  padding: const EdgeInsets.only(),
                                  child: Text(
                                    '-',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
                                  ),
                                )),
                            Text(number2),
                            TextButton(
                                onPressed: () {
                                  setState(() {
                                    number2 =
                                        (int.parse(number2) + 1).toString();
                                  });
                                },
                                // ignore: prefer_const_constructors
                                child: Padding(
                                  padding: const EdgeInsets.only(),
                                  child: Text(
                                    '+',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
                                  ),
                                )),
                          ],
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: Image(
                    image: AssetImage('assets/images/boy.png'),
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Text(
                        "King's Shirt",
                        style: MyStyles.robotoBold700.copyWith(fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Black - M",
                      style: TextStyle(color: Colors.grey[400]),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "22.90",
                          style: MyStyles.robotoBold700.copyWith(fontSize: 25),
                        ),
                        SizedBox(
                          width: 120,
                        ),
                        Row(
                          children: [
                            TextButton(
                                onPressed: () {
                                  setState(() {
                                    if (int.parse(number3) != 0) {
                                      number3 =
                                          (int.parse(number3) - 1).toString();
                                    }
                                  });
                                },
                                // ignore: prefer_const_constructors
                                child: Padding(
                                  padding: const EdgeInsets.only(),
                                  child: Text(
                                    '-',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
                                  ),
                                )),
                            Text(number3),
                            TextButton(
                                onPressed: () {
                                  setState(() {
                                    number3 =
                                        (int.parse(number3) + 1).toString();
                                  });
                                },
                                // ignore: prefer_const_constructors
                                child: Padding(
                                  padding: const EdgeInsets.only(),
                                  child: Text(
                                    '+',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
                                  ),
                                )),
                          ],
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: Image(
                    image: AssetImage('assets/images/girl3.png'),
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Text(
                        "Eywa Hoodie",
                        style: MyStyles.robotoBold700.copyWith(fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Grey - L",
                      style: TextStyle(color: Colors.grey[400]),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "30.90",
                          style: MyStyles.robotoBold700.copyWith(fontSize: 25),
                        ),
                        SizedBox(
                          width: 120,
                        ),
                        Row(
                          children: [
                            TextButton(
                                onPressed: () {
                                  setState(() {
                                    if (int.parse(number4) != 0) {
                                      number4 =
                                          (int.parse(number4) - 1).toString();
                                    }
                                  });
                                },
                                // ignore: prefer_const_constructors
                                child: Padding(
                                  padding: const EdgeInsets.only(),
                                  child: Text(
                                    '-',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
                                  ),
                                )),
                            Text(number4),
                            TextButton(
                                onPressed: () {
                                  setState(() {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Call()));
                                  });
                                },
                                // ignore: prefer_const_constructors
                                child: Padding(
                                  padding: const EdgeInsets.only(),
                                  child: Text(
                                    '+',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
                                  ),
                                )),
                          ],
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 42,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Total",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(
                    "129.60",
                    style: MyStyles.robotoBold700.copyWith(fontSize: 26),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 450,
              height: 50,
              decoration: BoxDecoration(
                  gradient:
                      LinearGradient(colors: [Colors.blueAccent, Colors.blue]),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Center(
                child: Text(
                  'Check out',
                  style: MyStyles.robotoBold700
                      .copyWith(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
