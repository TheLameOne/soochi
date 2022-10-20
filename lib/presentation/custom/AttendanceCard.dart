import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:soochi/utils/styles.dart';
import 'package:percent_indicator/percent_indicator.dart';

class AttendanceCard extends StatelessWidget {
  final int totalClasses;
  final int attendedClasses;
  final Function onTap;

  const AttendanceCard(
      {this.totalClasses = 100,
      this.attendedClasses = 84,
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
          elevation: 2,
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width - 32,
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Attendance",
                  style: GoogleFonts.poppins(
                      fontSize: 22, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Overall",
                            style: GoogleFonts.poppins(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "Attendance",
                            style: GoogleFonts.poppins(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      // Chart
                      CircularPercentIndicator(
                        radius: 32.0,
                        lineWidth: 6.0,
                        percent: attendedClasses / totalClasses,
                        center: Text(
                          ((attendedClasses / totalClasses) * 100).toString() +
                              "%",
                          style: GoogleFonts.poppins(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        progressColor: Colors.green,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Max",
                                style: GoogleFonts.poppins(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(width: 2),
                              Text(
                                totalClasses.toString(),
                                style: GoogleFonts.poppins(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Text(
                            attendedClasses.toString(),
                            style: GoogleFonts.poppins(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: Colors.green),
                          )
                        ],
                      )
                    ]),
                SizedBox(
                  height: 45,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
