class User {
  String? id;
  String firstname;
  String name;
  String photo;
  String phonenumber;
  String birthdate;

  User({
    this.id,
    required this.firstname,
    required this.name,
    required this.photo,
    required this.phonenumber,
    required this.birthdate,
  });

  User.fromJson(Map<String, dynamic> json)
      : id = json['_id'],
        firstname = json['firstname'],
        name = json['name'],
        photo = json['photo'],
        phonenumber = json['phonenumber'],
        birthdate = json['birthdate'],

  Map<String, dynamic> toJson() {
    if (id != null) {
      return {
        '_id': id,
        'firstname': firstname,
        'name': name,
        'photo': photo,
        'phonenumber': phonenumber,
        'birthdate': birthdate,
      };
    } else {
      return {
        'firstname': firstname,
        'name': name,
        'photo': photo,
        'phonenumber': phonenumber,
        'birthdate': birthdate,
      };
    }
  }
}
