import 'package:equatable/equatable.dart';

class User extends Equatable {
  const User({
    required this.id,
    required this.displayName,
    required this.email,
    required this.providerId,
  });

  final String id;
  final String displayName;
  final String email;
  final String providerId;

  @override
  List<Object> get props => [
        id,
        displayName,
        email,
        providerId,
      ];

  @override
  String toString() {
    return '''
      User(
        id: $id, displayName: $displayName, email: $email, 
        providerId: $providerId,
      )
    ''';
  }
}
