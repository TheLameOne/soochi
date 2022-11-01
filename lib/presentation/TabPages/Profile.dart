import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/styles.dart';
import '../custom/AttendanceCard.dart';
import '../custom/ProfileCard.dart';

class Profile extends StatefulWidget {
  static const String routeNamed = 'Profile';

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Profile",
                      style: GoogleFonts.poppins(
                          fontSize: 26, fontWeight: FontWeight.w600)),
                  SizedBox(height: 32),
                  ProfileCard(
                    onTap: () {},
                  ),
                  AttendanceCard(
                    onTap: () {},
                  ),
                ],
              ),
              Text("Department Of Computer Science",
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Styles.textColorLight))
            ],
          ),
        ),
      ),
    );
  }
}
