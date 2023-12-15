class model_student {
  int id;
  String npm;
  String name;
  int hit;
  String createdAt;
  String updatedAt;

  model_student(
      {required this.id,
      required this.name,
      required this.npm,
      required this.hit,
      required this.createdAt,
      required this.updatedAt});

  factory model_student.fromJson(Map<String, dynamic> json) {
    return model_student(
        id: json['id'],
        npm: json['npm'],
        name: json['name'],
        hit: json['hit'],
        createdAt: json['created_at'],
        updatedAt: json['updated_at']);
  }
}
