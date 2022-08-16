class User {
  User({
    required this.id,
    required this.displayName,
    required this.email,
    required this.providerId,
  });

  final String id;
  final String displayName;
  final String email;
  final String providerId;

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'displayName': displayName,
      'email': email,
      'providerId': providerId,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'] ?? '',
      displayName: map['displayName'] ?? '',
      email: map['email'] ?? '',
      providerId: map['providerId'] ?? '',
    );
  }
}
