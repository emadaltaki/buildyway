class UserInfo {
  late String firstName;
  late String lastName;

  UserInfo({
    required this.firstName,
    required this.lastName,
  });

  UserInfo.fromJson(Map<String, dynamic> json) {
    firstName = json['firstName'];
    lastName = json['lastName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["firstName"] = firstName;
    data["lastName"] = lastName;

    return data;
  }

  @override
  String toString() {
    return "year: $firstName, surgeryName: $lastName";
  }
}
