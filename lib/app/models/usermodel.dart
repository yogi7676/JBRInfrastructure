class UserModel {
  String? name;
  String? id;
  List<String>? favorites;
  String? email;
  String? avatar;

  UserModel({this.name, this.id, this.favorites, this.email, this.avatar});

  UserModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
    favorites = json['favorites'].cast<String>();
    email = json['email'];
    avatar = json['avatar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['id'] = id;
    data['favorites'] = favorites;
    data['email'] = email;
    data['avatar'] = avatar;
    return data;
  }
}
