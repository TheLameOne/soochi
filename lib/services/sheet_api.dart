import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

// getFeedbackFromSheet() async {
//   var raw = await http.get(
//       "https://script.google.com/macros/s/AKfycbzbTEO2B2lxO_kEmH7juC9RLkZByycz_QViG7LOeaJ4FYB38gs/exec");

//   var jsonFeedback = convert.jsonDecode(raw.body);
//   print('this is json Feedback $jsonFeedback');

//   // feedbacks = jsonFeedback.map((json) => FeedbackModel.fromJson(json));

//   jsonFeedback.forEach((element) {
//     print('$element THIS IS NEXT>>>>>>>');
//     FeedbackModel feedbackModel = new FeedbackModel();
//     feedbackModel.name = element['name'];
//     feedbackModel.feedback = element['feedback'];
//     feedbackModel.profilePic = element['profile_pic'];
//     feedbackModel.source = element['source'];
//     feedbackModel.sourceUrl = element["source_url"];

//     feedbacks.add(feedbackModel);
//   });

//   //print('${feedbacks[0]}');
// }
