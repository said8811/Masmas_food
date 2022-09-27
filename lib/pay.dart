import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutters/edit_payments.dart';
import 'package:flutters/payments.dart';
import 'package:flutters/utils/styles.dart';

class Pay extends StatefulWidget {
  const Pay({super.key});

  @override
  State<Pay> createState() => _PayState();
}

class _PayState extends State<Pay> {
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
              borderRadius: BorderRadius.all(Radius.circular(15)),
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
            Text(
              'Coniform Order',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: 19,
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Deliver To",
                            style: MyStyles.robotoLight200
                                .copyWith(color: Colors.grey[400]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Edit",
                            style: MyStyles.robotoLight200
                                .copyWith(color: Colors.green[300]),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          padding: EdgeInsets.only(
                            bottom: 20,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(13))),
                          child: Image.asset(
                            'assets/images/location.png',
                            width: 33,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 9),
                          child: Text(
                            "4517 Washington Ave. Manchester,\n Kentucky 39495",
                            style:
                                MyStyles.robotoBold700.copyWith(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Payment Method",
                            style: MyStyles.robotoLight200
                                .copyWith(color: Colors.grey[400]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Edit",
                            style: MyStyles.robotoLight200
                                .copyWith(color: Colors.green[300]),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 86,
                          padding: EdgeInsets.only(
                            bottom: 20,
                            left: 10,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(13))),
                          child: Image.asset(
                            'assets/images/paypal.png',
                            width: 86,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10, bottom: 9),
                          child: Text(
                            "2121 6352 8465 ****",
                            style: MyStyles.robotoRegular400
                                .copyWith(fontSize: 14),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 105,
            ),
            Container(
              height: 206,
              width: 346,
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(22)),
                  gradient: LinearGradient(
                      colors: [Color(0xFF53E88B), Color(0xFF15BE77)]),
                  image: DecorationImage(
                      image: AssetImage('assets/images/card_back.png'),
                      fit: BoxFit.cover),
                  color: Colors.black),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Sub-Total",
                        style: MyStyles.robotoMedium500.copyWith(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                      Image(
                        image: AssetImage('assets/images/120.png'),
                        width: 39,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Delivery Charge",
                        style: MyStyles.robotoMedium500.copyWith(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                      Image(
                        image: AssetImage('assets/images/10.png'),
                        width: 30,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Discount",
                        style: MyStyles.robotoMedium500.copyWith(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                      Image(
                        image: AssetImage('assets/images/20.png'),
                        width: 33,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 21,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: MyStyles.robotoMedium500.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                      Image(
                        image: AssetImage('assets/images/150.png'),
                        width: 47,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Editpayment()));
                    },
                    child: Container(
                      width: 325,
                      height: 57,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: Text(
                          "Place My Order",
                          style: MyStyles.robotoBold700
                              .copyWith(color: Color(0xFF53E88B), fontSize: 16),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
    ;
  }
}
