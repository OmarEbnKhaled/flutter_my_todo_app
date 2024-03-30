part of 'sign_in_bloc.dart';

@immutable
sealed class SignInState extends Equatable {
  const SignInState();

  @override
  List<Object> get props => [];
}

final class SignInInitial extends SignInState {}

final class SignInSuccessState extends SignInState {}

final class SignInLoadingState extends SignInState {}

final class SignInFailureState extends SignInState {
  final String message;

  const SignInFailureState({required this.message});

  @override
  List<Object> get props => [message];
}
