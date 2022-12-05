import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:soochi/utils/global.dart';
import 'package:soochi/utils/styles.dart';

class PeriodCard extends StatefulWidget {
  late String subjectName;
  late String subjectCode;
  late String facultyName;
  final String timeStart;
  final String timeEnd;
  late String lectureHall;
  final String lectureBlock;
  final Color color;
  final Function onTap;

  PeriodCard(
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
  State<PeriodCard> createState() => _PeriodCardState();
}

class _PeriodCardState extends State<PeriodCard> {
  @override
  void initState() {
    super.initState();
    assign();
  }

  void assign() {
    if (widget.subjectName.contains("/")) {
      var sn = widget.subjectName.split("/");
      var sc = widget.subjectCode.split("/");
      var fn = widget.facultyName.split("-");
      var lh = widget.lectureHall.split("/");
      var s1 = sn[0].split("-");
      var s2 = sn[1].split("-");

      if (s1[1] == batch || s1[1] == subject) {
        widget.subjectName = s1[0];
        widget.subjectCode = sc[0];
        widget.facultyName = fn[0];
        widget.lectureHall = lh[0];
      }

      if (s2[1] == batch || s2[1] == subject) {
        widget.subjectName = s2[0];
        widget.subjectCode = sc[1];
        widget.facultyName = fn[1];
        widget.lectureHall = lh[1];
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    var facultyList = widget.facultyName.split("/");
    return InkWell(
      onTap: () {
        widget.onTap();
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        child: Card(
          color: widget.color.withOpacity(0.6),
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
                    color: widget.color,
                    width: 74,
                    height: 90,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 6,
                          ),
                          Text(widget.timeStart,
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
                          Text(widget.timeEnd,
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
                      widget.subjectName,
                      style: GoogleFonts.poppins(
                          fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      // items[j].slot![i].faculty.toString(),
                      widget.subjectCode,
                      style: GoogleFonts.poppins(
                          fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                    for (var i = 0; i < facultyList.length; i++)
                      Text(
                        // items[j].slot![i].faculty.toString(),
                        facultyList[i],
                        style: GoogleFonts.poppins(
                            fontSize:
                                12 - (facultyList.length.toDouble() * 0.5),
                            fontWeight: FontWeight.w500),
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
