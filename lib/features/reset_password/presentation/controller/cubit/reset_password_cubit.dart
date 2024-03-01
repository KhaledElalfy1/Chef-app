import 'package:chef_app/core/services/server_locator.dart';
import 'package:chef_app/features/reset_password/data/repo/reset_password_repo.dart';
import 'package:chef_app/features/reset_password/data/repo/send_code_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'reset_password_state.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  ResetPasswordCubit() : super(ResetPasswordInitial());
  static ResetPasswordCubit get(context) => BlocProvider.of(context);
  GlobalKey<FormState> emailFormKey = GlobalKey();
  GlobalKey<FormState> createPasswordFormKey = GlobalKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController codeController = TextEditingController();
  Icon visibilityICon = const Icon(Icons.visibility_off);
  bool isVisable = true;

  // change visibility
  void changeVisibility() {
    isVisable = !isVisable;
    visibilityICon = isVisable
        ? const Icon(Icons.visibility_off)
        : const Icon(Icons.visibility);
    emit(ResetPasswordChangeVisibility());
  }

  // send code method

  Future sendCode() async {
    emit(SendCodeLoading());
    var result = await sl<SendCodeRepo>().sendCode(email: emailController.text);
    result.fold(
      (error) {
        emit(SendCodeFailure(eMessage: error));
      },
      (successMessage) {
        emit(SendCodeSuccess(successMessage: successMessage));
      },
    );
  }

  // reset password method
  Future resetPassword() async {
    emit(ResetPasswordLoading());
    var result = await sl<ResetPasswordRepo>().resetPassword(
        email: emailController.text,
        password: passwordController.text,
        confirmPassword: confirmPasswordController.text,
        code: codeController.text);

    result.fold(
      (error) {
        emit(ResetPasswordFailure(eMessage: error));
      },
      (successMessage) {
        emit(ResetPasswordSuccess(successMessage: successMessage));
      },
    );
  }
}
