import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_developer_test/config/routes/routes.dart';
import 'package:mobile_developer_test/config/theme/theme.dart';
import 'package:mobile_developer_test/core/responsive/responsive.dart';
import 'package:mobile_developer_test/features/recipes/presentation/bloc/recipes_bloc.dart';
import 'package:mobile_developer_test/generated/l10n.dart';
import 'package:mobile_developer_test/service_locator.dart';

class RecipesApp extends StatefulWidget {
  const RecipesApp({super.key});

  @override
  State<RecipesApp> createState() => _RecipesAppState();
}

class _RecipesAppState extends State<RecipesApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: context.isMobile
          ? const Size(360, 690)
          : context.isTablet
              ? const Size(768, 1024)
              : const Size(1366, 768),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, _) {
        return BlocProvider(
          create: (context) =>
              getIt<RecipesBloc>()..add(const GetRecipesCall()),
          child: MaterialApp.router(
            title: AppStrings.appName,
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            debugShowCheckedModeBanner: false,
            routerConfig: RouteConfigurations.router,
            theme: AppTheme.lightTheme(),
          ),
        );
      },
    );
  }
}
