class RentModel {
  String? id;
  String? address;
  double? lat;
  double? long;
  int? sqft;
  int? originalPrice;
  int? offerPrice;
  int? bhk;
  String? description;
  List<String>? photos;

  RentModel(
      {this.id,
      this.address,
      this.lat,
      this.long,
      this.sqft,
      this.originalPrice,
      this.offerPrice,
      this.bhk,
      this.description,
      this.photos});

  RentModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    address = json['address'];
    lat = json['lat'];
    long = json['long'];
    sqft = json['sqft'];
    originalPrice = json['original_price'];
    offerPrice = json['offer_price'];
    bhk = json['bhk'];
    description = json['description'];
    photos = json['photos'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['address'] = address;
    data['lat'] = lat;
    data['long'] = long;
    data['sqft'] = sqft;
    data['original_price'] = originalPrice;
    data['offer_price'] = offerPrice;
    data['bhk'] = bhk;
    data['description'] = description;
    data['photos'] = photos;
    return data;
  }
}
