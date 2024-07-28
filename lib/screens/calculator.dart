
import 'package:flutter/material.dart';

class screen2 extends StatefulWidget {
  const screen2({Key? key}) : super(key: key);

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
    TextEditingController num1=TextEditingController();
    TextEditingController num2=TextEditingController();
    int num_1=0;
    int num_2=0;
    double result=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SafeArea(child: Column(
          children: [
          Container(width:double.infinity ,height: 350,padding: EdgeInsets.all(30) ,
            decoration: BoxDecoration(
              color: Color(0xFF1d1e33),
              borderRadius: BorderRadius.only(bottomLeft:Radius.circular(100),bottomRight: Radius.circular(100))
            ),
            child: Column(
              children: [
                SizedBox(height:40),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "number 1",
                  hintStyle: TextStyle(fontSize: 22,color: Colors.white70)
                ),
                controller: num1,keyboardType: TextInputType.number,
              ),
              SizedBox(height:10),

              TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "number 2",
                      hintStyle: TextStyle(fontSize: 22,color: Colors.white70),
                  ),

                controller: num2,keyboardType: TextInputType.number,

              )
            ],),
          ),



           Container(height: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Container(width: 100,height: 20,color:Color(0xFFeb1555),),
              Text("Result = ${result.toStringAsFixed(3)}",style: TextStyle(fontSize: 30,color: Color(0xFF0a0c21)),),
              Container(width: 100,height: 20,color:Color(0xFFeb1555),),

              ],),
          ),




          Expanded(
            child: Container(width:double.infinity ,height: 350,
              decoration: BoxDecoration(
                  color: Color(0xFF1d1e33),
                  borderRadius: BorderRadius.only(topLeft:Radius.circular(100),topRight: Radius.circular(100))
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                InkWell(
                    onTap: (){
                      setState(() {
                      num_2=int.parse(num2.text);
                      num_1=int.parse(num1.text);
                      result=(num_1+num_2).toDouble();
                      });
                    },
                    child: CircleAvatar(radius: 35, child: Text("+",style: TextStyle(fontSize: 25,color: Colors.white)),backgroundColor: Color(0xFFeb1555),)),
                InkWell(
                    onTap:(){
                      setState(() {
                        num_2=int.parse(num2.text);
                        num_1=int.parse(num1.text);
                        result=(num_1-num_2).toDouble();
                      });                    } ,
                    child: CircleAvatar(radius: 35, child: Text("-",style: TextStyle(fontSize: 35,color: Colors.white)),backgroundColor: Color(0xFFeb1555),)),
                InkWell(
                    onTap: (){
                      setState(() {
                        num_2=int.parse(num2.text);
                        num_1=int.parse(num1.text);
                        result=(num_1*num_2).toDouble();
                      });                    },
                    child: CircleAvatar(radius: 35, child: Text("x",style: TextStyle(fontSize: 25,color: Colors.white)),backgroundColor: Color(0xFFeb1555),)),
                InkWell(
                    onTap: (){
                      setState(() {
                        num_2=int.parse(num2.text);
                        num_1=int.parse(num1.text);
                        result=num_1/num_2;
                      });                    },
                    child: CircleAvatar(radius: 35, child: Text("/",style: TextStyle(fontSize: 25,color: Colors.white)),backgroundColor: Color(0xFFeb1555),)),
              ],),
            ),
          )
        ],),
      ),
    );
  }
}
