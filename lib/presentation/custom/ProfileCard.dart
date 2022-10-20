import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:soochi/utils/styles.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String email;
  final String branch;
  final String rollnumber;
  final Function onTap;

  const ProfileCard(
      {this.name = "Harsh Verma",
      this.rollnumber = "1900320150022",
      this.branch = "Computer Engineering",
      this.email = "2018b151048@abes.ac.in",
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        child: Card(
          color: Styles.profileCardBackground,
          shadowColor: Styles.COLOR1,
          elevation: 0,
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width - 32,
            padding: EdgeInsets.all(16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    "Name:",
                    style: GoogleFonts.poppins(
                        fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Roll No:",
                    style: GoogleFonts.poppins(
                        fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Branch:",
                    style: GoogleFonts.poppins(
                        fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Email:",
                    style: GoogleFonts.poppins(
                        fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ]),
                SizedBox(width: 32),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 4),
                    Text(
                      name,
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Styles.textColorLight),
                    ),
                    SizedBox(height: 2),
                    Text(
                      rollnumber,
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Styles.textColorLight),
                    ),
                    SizedBox(height: 2),
                    Text(
                      branch,
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Styles.textColorLight),
                    ),
                    SizedBox(height: 2),
                    Text(
                      email,
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Styles.textColorLight),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
