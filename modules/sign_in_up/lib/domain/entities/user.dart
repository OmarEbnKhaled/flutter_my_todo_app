import 'package:dependencies/dependencies.dart';

class User extends Equatable {
  final String id;
  final String userName;
  final String email;
  final String imageLink;

  const User({
    required this.id,
    required this.userName,
    required this.email,
    required this.imageLink,
  });

  @override
  List<Object?> get props => [id, userName, email, imageLink];
}
