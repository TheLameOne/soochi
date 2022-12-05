class SheetModel {
  String? day;
  List<String>? time;
  List<Lectures>? lectures;

  SheetModel({this.day, this.lectures, this.time});

  SheetModel.fromJson(Map<String, dynamic> json) {
    day = json['day'];
    time = json['time'].cast<String>();

    if (json['lectures'] != null) {
      lectures = <Lectures>[];
      json['lectures'].forEach((v) {
        lectures!.add(Lectures.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['day'] = day;
    data['time'] = time;
    if (lectures != null) {
      data['lecture'] = lectures!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Lectures {
  String? subjectCode;
  String? subjectName;
  String? facultyIncharge;
  String? venue;

  Lectures({
    this.subjectCode,
    this.subjectName,
    this.facultyIncharge,
    this.venue,
  });

  Lectures.fromJson(Map<String, dynamic> json) {
    subjectCode = json['subject_code'];
    subjectName = json['subject_name'];
    facultyIncharge = json['faculty_incharge'];
    venue = json['venue'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['subject_code'] = subjectCode;
    data['subject_name'] = subjectName;
    data['faculty_incharge'] = facultyIncharge;
    data['venue'] = venue;
    return data;
  }
}
