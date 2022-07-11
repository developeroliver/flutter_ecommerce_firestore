class UserData {
  UserData({
    required this.email,
    required this.uid,
  });
  late String email;
  late String uid;

  UserData.fromMap(Map<String, dynamic> map)
      : email = map['email'] ?? "",
        uid = map['uid'] ?? "";

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'uid': uid,
    };
  }

}

