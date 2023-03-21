import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_app/bloc/app_theme_cubit.dart';
import 'package:login_app/main.dart';

class Home extends StatelessWidget {
  
   Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppThemeCubit appThemeCubit = BlocProvider.of<AppThemeCubit>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        leading: Switch(
          onChanged:(val) {
            appThemeCubit.changeModeTheme(val);
          },
          value: appThemeCubit.state.isMode,
        ),
        actions: [Icon(Icons.person, size: 30.0), SizedBox(width: 20.0)],
      ),
      body: Center(
        child: Text("Arman", style: TextStyle(fontSize: 30),),
      ),
    );
  }

}
