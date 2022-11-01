import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:soochi/utils/styles.dart';

class PeriodCard extends StatelessWidget {
  final String subjectName;
  final String subjectCode;
  final String facultyName;
  final String timeStart;
  final String timeEnd;
  final String lectureHall;
  final String lectureBlock;
  final Color color;
  final Function onTap;

  const PeriodCard(
      {this.subjectName = "Web Technology",
      this.subjectCode = "KCS-502",
      this.facultyName = "Ms. Lopamudra Mohanty",
      this.timeStart = "10:00",
      this.timeEnd = "11:00",
      this.lectureHall = "LT 60",
      this.lectureBlock = "KC block",
      this.color = Styles.blueCard,
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
          color: color.withOpacity(0.6),
          // shadowColor: Styles.COLOR1,
          // elevation: 2,
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width - 32,
            child: Row(
              children: [
                Container(
                    color: color,
                    width: 74,
                    height: 90,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 6,
                          ),
                          Text(timeStart,
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Styles.timeColor,
                                height: 0.8,
                              )),
                          Text("-",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Styles.timeColor,
                                height: 0.8,
                              )),
                          Text(timeEnd,
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Styles.timeColor,
                                height: 0.8,
                              ))
                        ])),
                SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      // items[j].slot![i].lecture.toString(),
                      subjectName,
                      style: GoogleFonts.poppins(
                          fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      // items[j].slot![i].faculty.toString(),
                      subjectCode,
                      style: GoogleFonts.poppins(
                          fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      // items[j].slot![i].faculty.toString(),
                      facultyName,
                      style: GoogleFonts.poppins(
                          fontSize: 12, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
