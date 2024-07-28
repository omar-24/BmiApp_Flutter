import 'package:bmi_app/cubit/cubit.dart';
import 'package:bmi_app/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class screen1 extends StatefulWidget {
  const screen1({Key? key}) : super(key: key);

  @override
  State<screen1> createState() => _screenState();
}

class _screenState extends State<screen1> {

  // int Wnum=50,Anum=20;
  // double Hnum=170;
  // bool male = false ;
  // bool  female=false;
  @override
  Widget build(BuildContext context) {
    var cubit=BlocProvider.of<appcubit>(context);
    return BlocConsumer<appcubit,Cstate>(builder:(context,state){
      return Scaffold(
        appBar:AppBar(
          title: Text("BMI Calculator",style: TextStyle(color: Colors.white)),
          centerTitle: true,
          backgroundColor: Color(0xFF0a0c21),
        ) ,


        body: Container(
          color: Color(0xFF0a0c21),
          child: Column(children: [


            Expanded(child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(child:
                  InkWell(onTap: (){
                     cubit.malebottom();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: cubit.male? Color(0xFFeb1555):Color(0xFF1d1e33),
                          borderRadius:BorderRadius.circular(15) ),
                      child: Column(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                          Icon(Icons.male,size: 80,color: Colors.white,),
                          SizedBox(height:10),
                          Text("Male",style:TextStyle(fontSize: 30,color: Colors.white),)
                        ],),
                    ),
                  )),

                  SizedBox(width: 10,),

                  Expanded(child:
                  InkWell(onTap: (){
                   cubit.femalebottom();
                  },
                    child: Container(
                      decoration: BoxDecoration(
                          color: cubit.female? Color(0xFFeb1555):Color(0xFF1d1e33),
                          borderRadius:BorderRadius.circular(15) ),
                      child: Column(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                          Icon(Icons.female,size: 80,color: Colors.white,),
                          SizedBox(height:10),
                          Text("Female",style:TextStyle(fontSize: 30,color: Colors.white),)
                        ],),
                    ),
                  )),

                ],
              ),
            )),



            Expanded(child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  Expanded(child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF1d1e33),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("HEIGHT",style: TextStyle(color:Colors.white,fontSize: 20),),
                          Text("${cubit.Hnum}",style: TextStyle(color:Colors.white,fontSize: 45,fontWeight: FontWeight.bold),),
                          Slider(value: cubit.Hnum,min: 120 ,max:220 , onChanged: (double x){
                            cubit.Hnum=x.roundToDouble();
                            cubit.height();
                          } ,)
                        ],)
                  ))

                ],
              ),
            )),



            Expanded(child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(children: [
                Expanded(child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFF1d1e33),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("WEIGHT",style: TextStyle(color: Colors.white,fontSize: 20)),
                      Text("${cubit.Wnum}",style: TextStyle(color: Colors.white,fontSize: 45,fontWeight:FontWeight.bold)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(onPressed: (){
                            cubit.incrementW();
                          },
                            child: Text("+",style: TextStyle(fontSize: 30)),
                          ),

                          SizedBox(width: 10),

                          FloatingActionButton(onPressed: (){
                            cubit.decrementW();
                          },
                            child: Text("-",style: TextStyle(fontSize: 30)),
                          )

                        ],)
                    ],
                  ),
                )),

                SizedBox(width: 10),

                Expanded(child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFF1d1e33),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("AGE",style: TextStyle(color: Colors.white,fontSize: 20)),
                      Text("${cubit.Anum}",style: TextStyle(color: Colors.white,fontSize: 45,fontWeight:FontWeight.bold)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(onPressed: (){
                            cubit.incrementA();
                          },
                            child: Text("+",style: TextStyle(fontSize: 30)),
                          ),

                          SizedBox(width: 10),

                          FloatingActionButton(
                            onPressed: (){
                              cubit.decremententA();
                            },
                            child: Text("-",style: TextStyle(fontSize: 30)),
                          )

                        ],)
                    ],
                  ),
                ))

              ],
              ),
            )),


            Container(height: 80,width: double.infinity,color:Color(0xFFeb1555),

              child: FloatingActionButton(onPressed:(){},
                child: Text("CALCULATE",style: TextStyle(color: Colors.white,fontSize: 30),),
                backgroundColor:Color(0xFFeb1555) ,

              ),
            )
          ],),
        ),


      );
    }, listener: (context,state){});
  }
}
