import 'package:flutter/material.dart';

import '../utils/styles.dart';
// import 'package:timetable/utils/styles.dart';
// import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Styles.COLOR1,
        //AppBar
        drawer: Drawer(
          backgroundColor: Styles.COLOR3,
          child: Column(
            children: [
              Text("Text 1"),
              Text("Text 1"),
              Text("Text 1"),
            ],
          ),
        ),
        appBar: AppBar(
          shadowColor: Styles.COLOR1,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/logo.png',
                height: 45,
                width: 45,
              ),
              Text(
                " Soochi",
                style: TextStyle(color: Styles.COLOR3),
              )
            ],
          ),
          backgroundColor: Styles.COLOR2,
        ),

        body: Text("harsh"),
      ),
    );
  }
}
