class maroon {
  int id;
  String message;
  String name;
  String createdAt;
  String updatedAt;

  maroon(
      {required this.id,
      required this.name,
      required this.message,
      required this.createdAt,
      required this.updatedAt});

  factory maroon.fromJson(Map<String, dynamic> json) {
    return maroon(
        id: json['id'],
        name: json['name'],
        message: json['message'],
        createdAt: json['created_at'],
        updatedAt: json['updated_at']);
  }
}
