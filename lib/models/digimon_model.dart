class Digimon {
  String? name;
  String? img;
  String? level;

  Digimon({this.name, this.img, this.level});

  Digimon.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    img = json['img'];
    level = json['level'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['name'] = name;
    data['img'] = img;
    data['level'] = level;
    return data;
  }
}
