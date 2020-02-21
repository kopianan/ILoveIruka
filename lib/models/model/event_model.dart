class EventsModel {
  List<EventList> eventList;

  EventsModel({this.eventList});

  EventsModel.fromJson(Map<String, dynamic> json) {
    if (json['eventList'] != null) {
      eventList = new List<EventList>();
      json['eventList'].forEach((v) {
        eventList.add(new EventList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.eventList != null) {
      data['eventList'] = this.eventList.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class EventList {
  String eventName;
  String description;
  String link;
  String picture;
  int priority;
  bool isActive;
  String scheduleDate;
  String id;
  String createdDate;

  EventList(
      {this.eventName,
      this.description,
      this.link,
      this.picture,
      this.priority,
      this.isActive,
      this.scheduleDate,
      this.id,
      this.createdDate});

  EventList.fromJson(Map<String, dynamic> json) {
    eventName = json['EventName'];
    description = json['Description'];
    link = json['Link'];
    picture = json['Picture'];
    priority = json['Priority'];
    isActive = json['isActive'];
    scheduleDate = json['ScheduleDate'];
    id = json['Id'];
    createdDate = json['CreatedDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['EventName'] = this.eventName;
    data['Description'] = this.description;
    data['Link'] = this.link;
    data['Picture'] = this.picture;
    data['Priority'] = this.priority;
    data['isActive'] = this.isActive;
    data['ScheduleDate'] = this.scheduleDate;
    data['Id'] = this.id;
    data['CreatedDate'] = this.createdDate;
    return data;
  }
}

