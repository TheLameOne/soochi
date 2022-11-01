class DataModel {
  String? day;
  List<Slot>? slot;

  DataModel({this.day, this.slot});

  DataModel.fromJson(Map<String, dynamic> json) {
    day = json['day'];
    if (json['slot'] != null) {
      slot = <Slot>[];
      json['slot'].forEach((v) {
        slot!.add(Slot.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['day'] = this.day;
    if (this.slot != null) {
      data['slot'] = this.slot!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Slot {
  int? id;
  String? subjectName;
  String? subjectCode;
  String? facultyName;
  String? timeStart;
  String? timeEnd;
  String? lectureHall;
  String? lectureBlock;

  Slot({
    this.id,
    this.subjectName,
    this.subjectCode,
    this.facultyName,
    this.timeStart,
    this.timeEnd,
    this.lectureHall,
    this.lectureBlock,
  });

  Slot.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    subjectName = json['subjectName'];
    subjectCode = json['subjectCode'];
    facultyName = json['facultyName'];
    timeStart = json['timeStart'];
    timeEnd = json['timeEnd'];
    lectureHall = json['lectureHall'];
    lectureBlock = json['lectureBlock'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['subjectName'] = subjectName;
    data['subjectCode'] = subjectCode;
    data['facultyName'] = facultyName;
    data['timeStart'] = timeStart;
    data['timeEnd'] = timeEnd;
    data['lectureHall'] = lectureHall;
    data['lectureBlock'] = lectureBlock;
    return data;
  }
}
