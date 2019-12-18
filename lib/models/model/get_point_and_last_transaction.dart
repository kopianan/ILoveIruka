class GetPointAndLastTransaction {
  LastTransaction lastTransaction;
  int customerPoints;

  GetPointAndLastTransaction({this.lastTransaction, this.customerPoints});

  GetPointAndLastTransaction.fromJson(Map<String, dynamic> json) {
    lastTransaction = json['lastTransaction'] != null
        ? new LastTransaction.fromJson(json['lastTransaction'])
        : null;
    customerPoints = json['customerPoints'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.lastTransaction != null) {
      data['lastTransaction'] = this.lastTransaction.toJson();
    }
    data['customerPoints'] = this.customerPoints;
    return data;
  }
}

class LastTransaction {
  String customerId;
  Null couponId;
  String couponValue;
  int subTotal;
  int total;
  Null notes;
  int earnedPoint;
  String createdBy;
  String createdDate;
  String modifiedBy;
  String modifiedDate;

  LastTransaction(
      {this.customerId,
      this.couponId,
      this.couponValue,
      this.subTotal,
      this.total,
      this.notes,
      this.earnedPoint,
      this.createdBy,
      this.createdDate,
      this.modifiedBy,
      this.modifiedDate});

  LastTransaction.fromJson(Map<String, dynamic> json) {
    customerId = json['CustomerId'];
    couponId = json['CouponId'];
    couponValue = json['CouponValue'];
    subTotal = json['SubTotal'];
    total = json['Total'];
    notes = json['Notes'];
    earnedPoint = json['EarnedPoint'];
    createdBy = json['CreatedBy'];
    createdDate = json['CreatedDate'];
    modifiedBy = json['ModifiedBy'];
    modifiedDate = json['ModifiedDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['CustomerId'] = this.customerId;
    data['CouponId'] = this.couponId;
    data['CouponValue'] = this.couponValue;
    data['SubTotal'] = this.subTotal;
    data['Total'] = this.total;
    data['Notes'] = this.notes;
    data['EarnedPoint'] = this.earnedPoint;
    data['CreatedBy'] = this.createdBy;
    data['CreatedDate'] = this.createdDate;
    data['ModifiedBy'] = this.modifiedBy;
    data['ModifiedDate'] = this.modifiedDate;
    return data;
  }
}
