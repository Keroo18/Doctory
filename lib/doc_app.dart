import 'package:doctory001/core/navigations/app_router.dart';
import 'package:doctory001/core/navigations/routes.dart';
import 'package:doctory001/core/theming/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child:  MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'doctory',
          theme: ThemeData(
            primaryColor: AppColor.primaryColor,
            scaffoldBackgroundColor: Colors.white,
          ),
          initialRoute: Routes.initial,
          onGenerateRoute: appRouter.onGenerateRoute,

        ),
    );
  }
}


