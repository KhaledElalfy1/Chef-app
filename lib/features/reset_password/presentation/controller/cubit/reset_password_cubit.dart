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
  Icon visibilityICon = const Icon(Icons.visibility);
  bool isVisable = false;

  // change visibility
  void changeVisibility() {
    isVisable = !isVisable;
    visibilityICon = isVisable
        ? const Icon(Icons.visibility)
        : const Icon(Icons.visibility_off);
    emit(ResetPasswordChangeVisibility());
  }
}
