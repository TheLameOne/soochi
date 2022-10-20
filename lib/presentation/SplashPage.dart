import 'package:flutter/material.dart';
import 'package:soochi/presentation/TabPages/Profile.dart';

import '../utils/global.dart';
import '../utils/styles.dart';
import 'TabPages/Home.dart';

class SplashPage extends StatefulWidget {
  static const String routeNamed = 'SplashPage';
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool isButtonLoading = false;
  _getBody() {
    switch (currentPage) {
      case 0:
        return Home();
      case 1:
        return Home();
      case 2:
        return Profile();
      default:
        return Home();
    }
  }

  _getBottomBar() {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32), topRight: Radius.circular(32)),
          color: Colors.black,
          boxShadow: [
            BoxShadow(color: Colors.black, blurRadius: 10, offset: Offset(4, 2))
          ]),
      child: Card(
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _getBottomBarItem(
                index: 0, icontab: Icons.people_alt, text: "Attendance"),
            _getBottomBarItem(
                index: 1, icontab: Icons.calendar_month, text: "Home"),
            _getBottomBarItem(
                index: 2, icontab: Icons.account_circle, text: "Profile"),
          ],
        ),
      ),
    );
  }

  _getBottomBarItem(
      {required int index, required IconData icontab, required String text}) {
    return InkWell(
      onTap: () {
        setState(() {
          currentPage = index;
        });
      },
      child: Container(
        alignment: Alignment.center,
        height: 50,
        margin: const EdgeInsets.all(4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(0),
              // decoration: BoxDecoration(
              //   color: currentPage == index ? Colors.black : Colors.transparent,
              //   borderRadius: BorderRadius.circular(10),
              // ),
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(icontab,
                        color:
                            currentPage == index ? Colors.cyan : Colors.white,
                        size: (28)),
                    // (currentPage == index) ? Container(margin:const EdgeInsets.only(left: 8) ,child: CustomText.smalltext(text)) : const Text('')
                  ],
                ),
              )),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: _getBottomBar(),
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[Expanded(child: _getBody())],
        ),
      ),
    );
  }
}
