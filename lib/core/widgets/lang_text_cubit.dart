import 'package:chef_app/core/global_controller/cubit/language_cubit.dart';
import 'package:chef_app/core/locale/app_locale.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitText extends StatelessWidget {
  const CubitText({super.key, required this.data, this.style});
  final String data;

  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageCubit, LanguageState>(
      builder: (context, state) {
        // print('from text bloc builder====================');
        return Text(
          data.tr(context),
          style: style,
        );
      },
    );
  }
}
