import 'dart:convert';
import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:soochi/model/test_model.dart';
import '../model/data_model.dart';
import '../utils/styles.dart';
import 'package:flutter/services.dart' as rootbundle;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

//  CalendarControllerProvider.of(context).controller.add(event);
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return CalendarControllerProvider(
      controller: EventController(),
      child: MaterialApp(
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
            shadowColor: Styles.COLOR4,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  height: 35,
                  width: 35,
                ),
                Text(
                  " Soochi",
                  style: TextStyle(color: Styles.COLOR1),
                )
              ],
            ),
            backgroundColor: Styles.COLOR4,
          ),
          body: FutureBuilder(
            future: readJsonData(),
            builder: (context, data) {
              if (data.hasError) {
                return Center(child: Text("${data.error}"));
              } else if (data.hasData) {
                var items = data.data as List<DataModel>;
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      for (int j = 0; j < items.length; j++)
                        for (int i = 0; i < items[j].slot!.length; i++)
                          // Custom Card
                          Card(
                            shadowColor: Styles.COLOR4,
                            elevation: 2,
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Styles.COLOR3,
                                    Styles.COLOR4,
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                              ),
                              padding: EdgeInsets.all(16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    items[j].slot![i].lecture.toString(),
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Styles.COLOR1,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    items[j].slot![i].faculty.toString(),
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Styles.COLOR1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
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
          ),
        ),
      ),
    );
  }

  Future<List<DataModel>> readJsonData() async {
    final jsondata = await rootbundle.rootBundle.loadString('json/data.json');
    print(jsondata);
    final list = json.decode(jsondata) as List<dynamic>;
    List<DataModel> res = [];
    for (var item in list) res.add(DataModel.fromJson(item));
    return res;
    // return list.map((e) => DataModel.fromJson(e)).toList();
  }
}
