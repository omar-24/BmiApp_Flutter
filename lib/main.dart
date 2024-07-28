import 'package:bmi_app/cubit/cubit.dart';
import 'package:bmi_app/screens/homePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'screens/bmi.dart';
import 'screens/calculator.dart';
import 'screens/login.dart';

main(){
  runApp(bmi_app());
}
class bmi_app extends StatelessWidget {
  const bmi_app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context)=>appcubit(),
        child:MaterialApp(
          home: homePage(),
        ) ,
    );
  }
}
