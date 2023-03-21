import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_app/home.dart';

import 'bloc/app_theme_cubit.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => AppThemeCubit()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppThemeCubit appThemeCubit = BlocProvider.of<AppThemeCubit>(context,listen: true);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appThemeCubit.state.isMode?ThemeData.dark():ThemeData.light(),
      home: Home(),
    );
  }
}
