import 'package:cloud_firestore/cloud_firestore.dart';

class ProductModel {
  String? address;
  dynamic? lat;
  dynamic? long;
  String? displayImage;
  List<String>? photos;
  String? description;
  dynamic? bhk;
  dynamic? floors;
  dynamic? offerPrice;
  dynamic originalPrice;
  dynamic sqft;
  String? userid;
  String? type;
  String? id;

  ProductModel(
      {this.address,
      this.lat,
      this.long,
      this.displayImage,
      this.photos,
      this.description,
      this.bhk,
      this.floors,
      this.offerPrice,
      this.originalPrice,
      this.sqft,
      this.userid,
      this.type});

  ProductModel.fromJson(DocumentSnapshot documentSnapshot) {
    Map<String, dynamic> json = documentSnapshot.data() as Map<String, dynamic>;
    id = documentSnapshot.id;
    address = json['address'];
    lat = json['lat'] ?? 0.00;
    long = json['long'] ?? 0.00;
    displayImage = json['displayImage'];
    photos = json['photos'].cast<String>();
    description = json['description'];
    bhk = json['bhk'];
    floors = json['floors'];
    offerPrice = json['offerPrice'];
    originalPrice = json['originalPrice'];
    sqft = json['sqft'];
    userid = json['userid'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['address'] = address;
    data['lat'] = lat;
    data['long'] = long;
    data['displayImage'] = displayImage;
    data['photos'] = photos;
    data['description'] = description;
    data['bhk'] = bhk;
    data['floors'] = floors;
    data['offerPrice'] = offerPrice;
    data['originalPrice'] = originalPrice;
    data['sqft'] = sqft;
    data['userid'] = userid;
    data['type'] = type;
    return data;
  }
}
