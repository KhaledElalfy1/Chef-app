part of 'reset_password_cubit.dart';

sealed class ResetPasswordState {}

final class ResetPasswordInitial extends ResetPasswordState {}

final class ResetPasswordLoading extends ResetPasswordState {}

final class ResetPasswordSuccess extends ResetPasswordState {
  final String successMessage;

  ResetPasswordSuccess({required this.successMessage});
}

final class ResetPasswordFailure extends ResetPasswordState {
  final String eMessage;

  ResetPasswordFailure({required this.eMessage});
}

final class SendCodeLoading extends ResetPasswordState {}

final class SendCodeSuccess extends ResetPasswordState {
  final String successMessage;

  SendCodeSuccess({required this.successMessage});
}

final class SendCodeFailure extends ResetPasswordState {
  final String eMessage;

  SendCodeFailure({required this.eMessage});
}

final class ResetPasswordChangeVisibility extends ResetPasswordState {}
