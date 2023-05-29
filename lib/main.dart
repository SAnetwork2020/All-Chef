
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'routes/routes.dart';
import 'themes.dart';



void main() {
  // setUpLocator();
  runApp(
     ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

//AppRouter Private Declaration here!!!
  // final appRouter = AppRouter();

    final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    // final appRouter = getIt<AppRouter>();
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      builder: (BuildContext context, Widget? child) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: _appRouter.config(),
        // routerDelegate: AutoRouterDelegate(appRouter),
        // routeInformationParser: appRouter.defaultRouteParser(),
        theme: theme(),
      ),
    );
  }
}
