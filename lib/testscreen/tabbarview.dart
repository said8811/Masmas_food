import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutters/testscreen/daryo.dart';
import 'package:flutters/testscreen/login.dart';
import 'package:flutters/testscreen/testpage.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          body: Column(
        children: [
          Container(
            color: Colors.amber,
            height: MediaQuery.of(context).size.height * 0.93,
            child: TabBarView(children: [Login(), Daryo(), GridPaper()]),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.07,
            child: TabBar(
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(icon: Icon(Icons.home)),
                  Tab(
                    child: Text("hello"),
                  ),
                  Tab(
                    icon: Icon(Icons.search),
                  )
                ]), 
          )
        ],
      )),
    );
  }
}
