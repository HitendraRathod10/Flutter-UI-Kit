class RealStateModel {
  int? id;
  String? title;
  String? address;
  String? type;
  bool? bookMark;
  String? overlooking;
  String? image;
  String? bad;
  String? washroom;
  String? bath;
  String? age;
  String? squared;
  String? price;
  bool? rent;
  bool? govtCharge;
  List<String>? dataType;
  String? description;
  List<Chat>? chat;
  String? mobile;
  String? published;

  RealStateModel(
      {this.id,
      this.title,
      this.address,
      this.type,
      this.bookMark,
      this.overlooking,
      this.image,
      this.bad,
      this.washroom,
      this.bath,
      this.age,
      this.squared,
      this.price,
      this.rent,
      this.govtCharge,
      this.dataType,
      this.description,
      this.chat,
      this.mobile,
      this.published});

  RealStateModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    address = json['address'];
    type = json['type'];
    bookMark = json['bookMark'];
    overlooking = json['overlooking'];
    image = json['image'];
    bad = json['bad'];
    washroom = json['washroom'];
    bath = json['bath'];
    age = json['age'];
    squared = json['squared'];
    price = json['price'];
    rent = json['rent'];
    govtCharge = json['govtCharge'];
    dataType = json['dataType'].cast<String>();
    description = json['description'];
    if (json['chat'] != null) {
      chat = <Chat>[];
      json['chat'].forEach((v) {
        chat!.add(new Chat.fromJson(v));
      });
    }
    mobile = json['mobile'];
    published = json['published'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['address'] = this.address;
    data['type'] = this.type;
    data['bookMark'] = this.bookMark;
    data['overlooking'] = this.overlooking;
    data['image'] = this.image;
    data['bad'] = this.bad;
    data['washroom'] = this.washroom;
    data['bath'] = this.bath;
    data['age'] = this.age;
    data['squared'] = this.squared;
    data['price'] = this.price;
    data['rent'] = this.rent;
    data['govtCharge'] = this.govtCharge;
    data['dataType'] = this.dataType;
    data['description'] = this.description;
    if (this.chat != null) {
      data['chat'] = this.chat!.map((v) => v.toJson()).toList();
    }
    data['mobile'] = this.mobile;
    data['published'] = this.published;
    return data;
  }
}

class Chat {
  String? customer;
  String? suppler;
  String? time;

  Chat({this.customer, this.suppler, this.time});

  Chat.fromJson(Map<String, dynamic> json) {
    customer = json['customer'];
    suppler = json['suppler'];
    time = json['time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['customer'] = this.customer;
    data['suppler'] = this.suppler;
    data['time'] = this.time;
    return data;
  }
}
