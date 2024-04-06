import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_task_app/core/route/app_route.dart';
import 'package:login_task_app/src/feature/login/cubit/login_cubit.dart';
import 'package:login_task_app/src/feature/otp/cubit/otp_cubit.dart';

import '../core/utils/app_colors.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginCubit(),
        ),
        BlocProvider(
          create: (context) => OtpCubit(),
        ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Login Task App',
          theme: ThemeData(
            scaffoldBackgroundColor: AppTextColors.whitegery,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          onGenerateRoute: (settings) => AppRoute.onGenerateRoute(settings),
          initialRoute: "splash"),
    );
  }
}
