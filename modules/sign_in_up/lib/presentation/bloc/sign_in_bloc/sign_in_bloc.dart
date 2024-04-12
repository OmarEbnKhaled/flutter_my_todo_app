import 'package:core/failure/failure.dart';
import 'package:core/failure/map_failure_to_message_fn.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';

import '../../../domain/use_cases/sign_in/sign_in_email_password_use_case.dart';
import '../../../domain/use_cases/sign_in/sign_in_google_use_case.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final SignInEmailPasswordUseCase signInEmailPassword;
  final SignInGoogleUseCase signInGoogle;

  SignInBloc({
    required this.signInEmailPassword,
    required this.signInGoogle,
  }) : super(SignInInitial()) {
    on<SignInEvent>((event, emit) async {
      emit(SignInLoadingState());

      final Either<Failure, Unit> failureOrSuccess;

      if (event is SignInGoogleEvent) {
        failureOrSuccess = await signInGoogle();
        emit(_mapFailureOrSuccess(failureOrSuccess));
      } else if (event is SignInEmailPasswordEvent) {
        failureOrSuccess = await signInEmailPassword(
          event.email,
          event.password,
        );
        emit(_mapFailureOrSuccess(failureOrSuccess));
      }
    });
  }

  SignInState _mapFailureOrSuccess(
    Either<Failure, Unit> either,
  ) {
    return either.fold(
      (failure) => SignInFailureState(message: mapFailureToMessage(failure)),
      (_) => SignInSuccessState(),
    );
  }
}
