import 'dart:convert';
import 'dart:math';
import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:soochi/model/test_model.dart';
import '../../model/data_model.dart';
import '../../model/sheets_model.dart';
import '../../services/sheet_api.dart';
import '../../utils/styles.dart';
import 'package:flutter/services.dart' as rootbundle;

import '../custom/PeriodCard.dart';

class Home extends StatefulWidget {
  static const String routeNamed = 'Home';
  @override
  State<Home> createState() => _HomeState();
}

//  CalendarControllerProvider.of(context).controller.add(event);
class _HomeState extends State<Home> {
  var colorList = [Styles.redCard, Styles.blueCard, Styles.yellowCard];
  @override
  // void initState() {
  //   getFeedbackFromSheet();
  //   super.initState();
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: FutureBuilder(
        future: readJsonData(),
        builder: (context, data) {
          if (data.hasError) {
            return Center(child: Text("${data.error}"));
          } else if (data.hasData) {
            var items = data.data as List<SheetModel>;
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Good Morning, Harsh",
                          style: GoogleFonts.poppins(
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                              color: Styles.textColorMain)),
                      SizedBox(
                        height: 16,
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      for (int j = 0; j < items.length; j++)
                        // Custom Card
                        PeriodCard(
                          facultyName:
                              items[j].lectures![j].facultyIncharge.toString(),
                          subjectCode:
                              items[j].lectures![j].subjectCode.toString(),
                          subjectName:
                              items[j].lectures![j].subjectName.toString(),
                          timeStart: "yoyo",
                          timeEnd: "yoyo",
                          // timeStart: items[j].slot![i].timeStart.toString(),
                          // timeEnd: items[j].slot![i].timeEnd.toString(),
                          lectureHall: items[j].lectures![j].venue.toString(),
                          // lectureBlock: "KC Block",
                          // lectureBlock:
                          //     items[j].slot![i].lectureBlock.toString(),
                          onTap: () {},
                          color: colorList[Random().nextInt(colorList.length)],
                        ),
                      // Text(items[0].slot![1].lecture.toString()),
                      // Text(items[0].slot![2].lecture.toString()),
                      // Text(items[0].slot![3].lecture.toString()),
                      // Text(items[0].slot![4].lecture.toString()),
                      // Text(items[0].slot![5].lecture.toString()),
                      // Text(items[0].slot![6].lecture.toString()),
                      // Text(items[0].slot![7].lecture.toString()),
                    ],
                  ),
                ],
              ),
            );
            // return ListView.builder(
            //     itemCount: items.length,
            //     itemBuilder: (context, index) {
            //       return Text(
            //         items[index].slot![7].lecture.toString(),
            //       );
            //     });
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      )),
    );
  }

  Future<List<SheetModel>> readJsonData() async {
    final jsondata = await rootbundle.rootBundle.loadString('json/sheet.json');
    // print(jsondata);
    final list = json.decode(jsondata) as List<dynamic>;
    List<SheetModel> res = [];
    for (var item in list) {
      res.add(SheetModel.fromJson(item));
    }
    return res;
    // return list.map((e) => DataModel.fromJson(e)).toList();
  }
}
