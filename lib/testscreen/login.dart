import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
              height: 800,
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.phone,
                    obscureText: false,
                    decoration: InputDecoration(
                        labelText: 'phone',
                        hintText: 'Phone number',
                        prefixIcon: IconButton(
                          icon: Icon(Icons.phone),
                          onPressed: () {},
                        ),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15)))),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  TextField(
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'password',
                        hintText: 'Password',
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15)))),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
