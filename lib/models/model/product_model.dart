class ProductsModel {
  List<ProductList> productList;

  ProductsModel({this.productList});

  ProductsModel.fromJson(Map<String, dynamic> json) {
    if (json['productList'] != null) {
      productList = new List<ProductList>();
      json['productList'].forEach((v) {
        productList.add(new ProductList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.productList != null) {
      data['productList'] = this.productList.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ProductList {
  String productName;
  String description;
  String link;
  String picture;
  bool isActive;
  int priority;
  String scheduleDate;
  String id;
  String createdDate;

  ProductList(
      {this.productName,
      this.description,
      this.link,
      this.picture,
      this.isActive,
      this.priority,
      this.scheduleDate,
      this.id,
      this.createdDate});

  ProductList.fromJson(Map<String, dynamic> json) {
    productName = json['ProductName'];
    description = json['Description'];
    link = json['Link'];
    picture = json['Picture'];
    isActive = json['isActive'];
    priority = json['Priority'];
    scheduleDate = json['ScheduleDate'];
    id = json['Id'];
    createdDate = json['CreatedDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ProductName'] = this.productName;
    data['Description'] = this.description;
    data['Link'] = this.link;
    data['Picture'] = this.picture;
    data['isActive'] = this.isActive;
    data['Priority'] = this.priority;
    data['ScheduleDate'] = this.scheduleDate;
    data['Id'] = this.id;
    data['CreatedDate'] = this.createdDate;
    return data;
  }
}
