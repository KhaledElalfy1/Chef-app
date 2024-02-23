import 'package:chef_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit() : super(SignInInitial());
  static SignInCubit get(context) => BlocProvider.of(context);
  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  Icon visibilityIcon =const Icon(Icons.visibility_off,color: AppColor.gray,);
  bool visibility = true;

  void changeVisibility() {
    visibility = !visibility;
    visibilityIcon=Icon(visibility? Icons.visibility_off:Icons.visibility,color: AppColor.gray,);
    emit(SignInChangePasswordVisibility());
  }
}
