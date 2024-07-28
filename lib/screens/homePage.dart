import 'package:bmi_app/screens/bmi.dart';
import 'package:bmi_app/screens/calculator.dart';
import 'package:bmi_app/screens/login.dart';
import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int curr_index=0;

  List<Widget> pages=[
    screen1(),
    screen2(),
    screen3()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[curr_index],


      bottomNavigationBar: BottomNavigationBar(
        currentIndex: curr_index,
        backgroundColor:Color(0xFF1d1e33) ,
        unselectedItemColor: Colors.white,
        selectedItemColor:Color(0xFFeb1555) ,
        onTap: (index){
          setState(() {
            curr_index=index;
          });
        },
        items: [
          BottomNavigationBarItem(label: "BMI",icon: Icon(Icons.accessibility)),
          BottomNavigationBarItem(label:"calc",icon: Icon(Icons.calculate_outlined)),
          BottomNavigationBarItem(label:"login",icon: Icon(Icons.login)),
        ],),
    );
  }
}
