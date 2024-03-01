import 'package:chef_app/core/widgets/custom_text_form_filed.dart';
import 'package:chef_app/features/reset_password/presentation/controller/cubit/reset_password_cubit.dart';
import 'package:flutter/material.dart';

class EmailForm extends StatelessWidget {
  const EmailForm({super.key});

  @override
  Widget build(BuildContext context) {
    return  Form(
                key: ResetPasswordCubit.get(context).emailFormKey,
                child: CustomTextFormFiled(
                  hintText: 'E-mail',
                  validator: (value) {
                    if (value!.isEmpty || !value.contains('@gmail.com')) {
                      return 'Enter Correct Email Address';
                    }
                    return null;
                  },
                  textEditingController:
                      ResetPasswordCubit.get(context).emailController,
                  keyboardType: TextInputType.emailAddress,
                ),
              );
  }
}