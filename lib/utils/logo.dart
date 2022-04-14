import 'package:flutter/material.dart';
import 'package:soochi/utils/styles.dart';

class Logo extends StatelessWidget {
  final double height;
  final double width;
  final bool appname;
  Logo({
    this.height = 200,
    this.width = 200,
    this.appname = true,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Image
          Image.asset('assets/images/logo.png', height: height, width: width),
          (appname)
              ? const Text(
                  "Soochi",
                  style: TextStyle(
                    color: Styles.COLOR4,
                    fontSize: 32,
                  ),
                )
              : const SizedBox.shrink(),
          //Text
        ],
      ),
    );
  }
}
