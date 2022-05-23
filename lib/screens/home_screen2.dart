// import 'dart:convert';
// import 'package:calendar_view/calendar_view.dart';
// import 'package:flutter/material.dart';
// import 'package:soochi/model/test_model.dart';
// import '../model/data_model.dart';
// import '../utils/styles.dart';
// import 'package:event/event.dart';
// import 'package:flutter/services.dart' as rootbundle;

// DateTime get _now => DateTime.now();

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return CalendarControllerProvider(
//       controller: EventController(),
//       child: MaterialApp(
//           home: Scaffold(
//         backgroundColor: Styles.COLOR1,
//         drawer: Drawer(
//           backgroundColor: Styles.COLOR1,
//           child: Column(
//             children: [
//               Text("Text 1"),
//               Text("Text 1"),
//               Text("Text 1"),
//             ],
//           ),
//         ),
//         appBar: AppBar(
//           backgroundColor: Styles.COLOR1,
//           iconTheme: IconThemeData(color: Styles.COLOR4),
//         ),
//         body: DayView(
//             controller: EventController<Event>()..addAll(_events),
//             // controller: EventController(),
//             eventTileBuilder: (date, events, boundry, start, end) {
//               // Return your widget to display as event tile.
//               date = DateTime.now();
//               events = _events;
//               return Container();
//             },
//             showVerticalLine: true, // To display live time line in day view.
//             showLiveTimeLineInAllDays:
//                 true, // To display live time line in all pages in day view.
//             // minMonth: DateTime(1990),
//             // maxMonth: DateTime(2050),
//             // initialMonth: DateTime(2021),
//             heightPerMinute: 1, // height occupied by 1 minute time span.
//             eventArranger:
//                 SideEventArranger(), // To define how simultaneous events will be arranged.
//             onEventTap: (events, date) => print(events),
//             onDateLongPress: (date) => print(date)
//             // height occupied by 1 minute time span.
//             ),
//       )),
//     );
//   }

//   Future<List<DataModel>> readJsonData() async {
//     final jsondata = await rootbundle.rootBundle.loadString('json/data.json');
//     print(jsondata);
//     final list = json.decode(jsondata) as List<dynamic>;
//     List<DataModel> res = [];
//     for (var item in list) res.add(DataModel.fromJson(item));
//     return res;
//     // return list.map((e) => DataModel.fromJson(e)).toList();
//   }
// }

// List<CalendarEventData<Event>> _events = [
//   CalendarEventData(
//     date: _now,
//     event: Event(),
//     title: "Project meeting",
//     description: "Today is project meeting.",
//     startTime: DateTime(2022, 1, 5, 17, 30),
//     endTime: DateTime(2022, 1, 5, 17, 30),
//   ),
//   CalendarEventData(
//     date: _now.add(Duration(days: 1)),
//     startTime: DateTime(_now.year, _now.month, _now.day, 18),
//     endTime: DateTime(_now.year, _now.month, _now.day, 19),
//     event: Event(),
//     title: "Wedding anniversary",
//     description: "Attend uncle's wedding anniversary.",
//   ),
//   CalendarEventData(
//     date: _now,
//     startTime: DateTime(_now.year, _now.month, _now.day, 14),
//     endTime: DateTime(_now.year, _now.month, _now.day, 17),
//     event: Event(),
//     title: "Football Tournament",
//     description: "Go to football tournament.",
//   ),
//   CalendarEventData(
//     date: _now.add(Duration(days: 3)),
//     startTime: DateTime(_now.add(Duration(days: 3)).year,
//         _now.add(Duration(days: 3)).month, _now.add(Duration(days: 3)).day, 10),
//     endTime: DateTime(_now.add(Duration(days: 3)).year,
//         _now.add(Duration(days: 3)).month, _now.add(Duration(days: 3)).day, 14),
//     event: Event(),
//     title: "Sprint Meeting.",
//     description: "Last day of project submission for last year.",
//   ),
//   CalendarEventData(
//     date: _now.subtract(Duration(days: 2)),
//     startTime: DateTime(
//         _now.subtract(Duration(days: 2)).year,
//         _now.subtract(Duration(days: 2)).month,
//         _now.subtract(Duration(days: 2)).day,
//         14),
//     endTime: DateTime(
//         _now.subtract(Duration(days: 2)).year,
//         _now.subtract(Duration(days: 2)).month,
//         _now.subtract(Duration(days: 2)).day,
//         16),
//     event: Event(),
//     title: "Team Meeting",
//     description: "Team Meeting",
//   ),
//   CalendarEventData(
//     date: _now.subtract(Duration(days: 2)),
//     startTime: DateTime(
//         _now.subtract(Duration(days: 2)).year,
//         _now.subtract(Duration(days: 2)).month,
//         _now.subtract(Duration(days: 2)).day,
//         10),
//     endTime: DateTime(
//         _now.subtract(Duration(days: 2)).year,
//         _now.subtract(Duration(days: 2)).month,
//         _now.subtract(Duration(days: 2)).day,
//         12),
//     event: Event(),
//     title: "Chemistry Viva",
//     description: "Today is Joe's birthday.",
//   ),
// ];
