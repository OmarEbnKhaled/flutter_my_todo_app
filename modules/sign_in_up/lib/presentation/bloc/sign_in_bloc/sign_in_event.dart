part of 'sign_in_bloc.dart';

@immutable
sealed class SignInEvent extends Equatable {
  const SignInEvent();

  @override
  List<Object> get props => [];
}

class SignInGoogleEvent extends SignInEvent {}

class SignInEmailPasswordEvent extends SignInEvent {
  final String email;
  final String password;

  const SignInEmailPasswordEvent({
    required this.email,
    required this.password,
  });

  @override
  List<Object> get props => [email, password];
}
