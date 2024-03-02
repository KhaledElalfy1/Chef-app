import 'package:chef_app/features/menu/presentation/view/menu.dart';
import 'package:chef_app/features/profile/presentation/view/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;

  List<Widget> homeRoutes = const [
    Menu(),
    Profile(),
  ];

  void changeIndex({required int value}) {
    currentIndex = value;
    emit(ChangeRoute());
  }
}
