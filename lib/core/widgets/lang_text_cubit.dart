import 'package:chef_app/core/global_controller/cubit/language_cubit.dart';
import 'package:chef_app/core/locale/app_locale.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitText extends StatelessWidget {
  const CubitText({
    Key? key,
    required this.data,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.textScaler,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
  }) : super(key: key);

  final String data;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;
  final double? textScaleFactor;
  final TextScaler? textScaler;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;
  final Color? selectionColor;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageCubit, LanguageState>(
      builder: (context, state) {
        // print('from text bloc builder====================');
        return Text(
          data.tr(context),
          style: style,
          strutStyle: strutStyle,
          textAlign: textAlign,
          textDirection: textDirection,
          locale: locale,
          softWrap: softWrap,
          overflow: overflow,
          textWidthBasis: textWidthBasis,
          textHeightBehavior: textHeightBehavior,
          selectionColor: selectionColor,
          maxLines: maxLines,
          semanticsLabel: semanticsLabel,
        );
      },
    );
  }
}
