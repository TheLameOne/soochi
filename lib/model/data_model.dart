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
  String? lecture;
  String? faculty;
  String? venue;

  Slot({this.id, this.lecture, this.faculty, this.venue});

  Slot.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    lecture = json['lecture'];
    faculty = json['faculty'];
    venue = json['venue'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['lecture'] = this.lecture;
    data['faculty'] = this.faculty;
    data['venue'] = this.venue;
    return data;
  }
}
