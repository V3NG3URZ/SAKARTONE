import 'package:intl/intl.dart';

class Profile {
  String firstname;
  String name;
  String photo;
  String phonenumber;
  String birthdate;

  Profile({
    required this.firstname,
    required this.name,
    required this.photo,
    required this.phonenumber,
    required this.birthdate,
  });

  Profile.fromJson(Map<String, dynamic> json)
      : firstname = json['firstname'],
        name = json['name'],
        photo = json['photo'],
        phonenumber = json['phonenumber'],
        birthdate = json['birthdate'];

  Map<String, dynamic> toJson() {
    return {
      'firstname': firstname,
      'name': name,
      'photo': photo,
      'phonenumber': phonenumber,
      'birthdate': birthdate,
    };
  }

  String showProfile() {
    return "$firstname\n$name\n$phonenumber\n$birthdate\n\n";
  }

  bool isBirthdayToday() {
    DateTime now = DateTime.now();
    DateTime birthdate = getBirthDate();
    return (now.month == birthdate.month && now.day == birthdate.day);
  }

  DateTime getBirthDate() {
    return DateTime.parse(birthdate);
  }

  String getFormatBirthDate() {
    var newFormat = DateFormat("dd/MM/yyyy");
    return newFormat.format(getBirthDate());
  }

  DateTime birthdateThisYear() {
    DateTime now = DateTime.now();
    DateTime birthdate = getBirthDate();
    return DateTime(now.year, birthdate.month, birthdate.day);
  }

  int getAge() {
    DateTime now = DateTime.now();
    int age = now.year - getBirthDate().year;
    return now.isBefore(birthdateThisYear()) ? age - 1 : age;
  }

  int getNextAge() {
    DateTime now = DateTime.now();
    DateTime nowtime0 = DateTime(now.year, now.month, now.day);
    return nowtime0.isAtSameMomentAs(birthdateThisYear())
        ? getAge()
        : getAge() + 1;
  }

  String getDaysLast() {
    String text;
    DateTime nowtime = DateTime.now();
    DateTime now = DateTime(nowtime.year, nowtime.month, nowtime.day);
    DateTime birthdate = birthdateThisYear();

    if (birthdate.isBefore(now)) {
      text = "next year !";
    } else if (now.isAtSameMomentAs(birthdate)) {
      text = "today !";
    } else {
      int diff = birthdate.difference(now).inDays;
      if (diff == 1) {
        text = "tomorrow !";
      } else if (diff < 31) {
        text = "in $diff days";
      } else {
        text = "in ${birthdate.month - now.month} months";
      }
    }
    return text;
  }
}
