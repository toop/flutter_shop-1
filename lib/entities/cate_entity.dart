class CateEntity {
  String goodsName;
  String goodsId;
  String goodsImg;
  double orgPrice;
  double price;
  int count;
  bool isChecked;

  CateEntity({this.goodsName, this.goodsId, this.goodsImg, this.orgPrice, this.price, this.count, this.isChecked});

  CateEntity.fromJson(Map<String, dynamic> json) {
    goodsName = json['goodsName'];
    goodsId = json['goodsId'];
    goodsImg = json['goodsImg'];
    orgPrice = json['orgPrice'] + 0.0;
    price = json['price'] + 0.0;
    count = json['count'];
    isChecked = json['isChecked'];
  }

  static List<CateEntity> fromJsonList(dynamic maps) {
    List<CateEntity> list = List(maps.length);
    for (int i = 0; i < maps.length; i++) {
      list[i] = CateEntity.fromJson(maps[i]);
    }
    return list;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['goodsName'] = this.goodsName;
    data['goodsId'] = this.goodsId;
    data['goodsImg'] = this.goodsImg;
    data['orgPrice'] = this.orgPrice;
    data['price'] = this.price;
    data['count'] = this.count;
    data['isChecked'] = this.isChecked;
    return data;
  }
}
