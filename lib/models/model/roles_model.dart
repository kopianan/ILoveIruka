class RolesModel {
  List<RoleList> roleList;

  RolesModel({this.roleList});

  RolesModel.fromJson(Map<String, dynamic> json) {
    if (json['RoleList'] != null) {
      roleList = new List<RoleList>();
      json['RoleList'].forEach((v) {
        roleList.add(new RoleList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.roleList != null) {
      data['RoleList'] = this.roleList.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class RoleList {
  String id;
  String name;

  RoleList({this.id, this.name});

  RoleList.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['Name'] = this.name;
    return data;
  }
}
