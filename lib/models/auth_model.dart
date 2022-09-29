class AuthModel {
  String? id;
  String? name;
  String? email;
  String? password;
  String? phone;
  String? address;
  String? path;
  String? rating;
  String? booking;
  int? type_job_id;
  int? role;

  AuthModel({
    this.id,
    this.address,
    this.booking,
    this.email,
    this.name,
    this.password,
    this.path,
    this.phone,
    this.rating,
    this.role,
    this.type_job_id,
  });

  AuthModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'] ?? '';
    email = json['email'] ?? '';
    phone = json['phone'] ?? '';
    phone = json['address'] ?? '';
    phone = json['booking'] ?? '';
    phone = json['password'] ?? '';
    phone = json['path'] ?? '';
    phone = json['rating'] ?? '';
    phone = json['role'] ?? '';
    phone = json['type_job_id'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'];
    data['name'] ?? '';
    data['email'] ?? '';
    data['phone'] ?? '';
    data['address'] ?? '';
    data['booking'] ?? '';
    data['password'] ?? '';
    data['path'] ?? '';
    data['rating'] ?? '';
    data['role'] ?? '';
    data['type_job_id'] ?? '';

    return data;
  }
}
