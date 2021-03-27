class ProvinceDataModel {
  String provinceId;
  String province;

  ProvinceDataModel({this.provinceId, this.province});

  ProvinceDataModel.fromJson(Map<String, dynamic> json) {
    provinceId = json['province_id'];
    province = json['province'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['province_id'] = this.provinceId;
    data['province'] = this.province;
    return data;
  }
}
