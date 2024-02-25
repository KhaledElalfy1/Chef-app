part of 'sign_in_cubit.dart';

sealed class SignInState {}

final class SignInInitial extends SignInState {}

final class SignInLoading extends SignInState {}

final class SignInSuccess extends SignInState {
  final SignInModel signInModel;

  SignInSuccess({required this.signInModel});
}

final class SignInFailure extends SignInState {
  final String eMessage;

  SignInFailure({required this.eMessage});
}

final class SignInChangePasswordVisibility extends SignInState {}
