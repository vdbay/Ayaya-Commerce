class TestModel {
  int? id;
  String? name;
  int? age;
  DateTime createdAt = DateTime.now();

  TestModel({this.id, this.name, this.age, required this.createdAt});

  TestModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'];
    name = json['name'];
    age = json['age'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['created_at'] = createdAt;
    data['name'] = name;
    data['age'] = age;
    return data;
  }
}
