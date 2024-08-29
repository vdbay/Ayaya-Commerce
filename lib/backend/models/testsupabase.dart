class TestModel {
  int? id;
  String? createdAt;
  String? name;
  int? age;

  TestModel({this.id, this.createdAt, this.name, this.age});

  TestModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'];
    name = json['name'];
    age = json['age'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['created_at'] = this.createdAt;
    data['name'] = this.name;
    data['age'] = this.age;
    return data;
  }
}
