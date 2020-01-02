class RolesModel {
  List<String> roleList;

  RolesModel({this.roleList});

  RolesModel.fromJson(Map<String, dynamic> json) {
    roleList = json['RoleList'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['RoleList'] = this.roleList;
    return data;
  }
}
