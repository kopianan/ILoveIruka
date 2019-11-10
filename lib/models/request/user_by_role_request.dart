class UserByRoleRequest {
  String role;

  UserByRoleRequest({this.role});

  UserByRoleRequest.fromJson(Map<String, dynamic> json) {
    role = json['role'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['role'] = this.role;
    return data;
  }
}

