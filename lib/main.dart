import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_developer_test/bloc_observer.dart';
import 'package:mobile_developer_test/core/helpers/helpers.dart';
import 'package:mobile_developer_test/recipes_app.dart';
import 'package:mobile_developer_test/service_locator.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await init();
  runApp(const RecipesApp());
  FlutterNativeSplash.remove();
}

Future<void> init() async {
  Bloc.observer = MyBlocObserver();
  setupLocator();
  await ScreenUtil.ensureScreenSize();
  Future.delayed(const Duration(seconds: 10),
      () => ConnectivityChecker.instance.initialize());
  await CacheHelper.init();
}
