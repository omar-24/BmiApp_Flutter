import 'package:flutter/material.dart';

class screen3 extends StatelessWidget {
  const screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color:Color(0xFF0a0c21) ,child:ListView(children:[


        Container(height: 220,width:double.infinity,padding: EdgeInsets.only(left: 30,bottom: 40),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text("Login",style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold,color: Colors.white),),
          Text("Enter a beautiful world",style: TextStyle(fontSize: 20,color: Colors.white),)

        ],),),




        Expanded(child:Container(padding:EdgeInsets.all(40),
          decoration: BoxDecoration(
              color: Color(0xFF1d1e33),
              borderRadius:BorderRadius.only(topLeft:Radius.circular(40),topRight: Radius.circular(40))
          ),
          child:Column(
            children: [
            SizedBox(height:70),

            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Your Email",
                hintStyle: TextStyle(fontSize: 20),
                prefixIcon: Icon(Icons.email_outlined),
                filled: true,
                fillColor: Colors.grey[300],
              ),
            ),

            SizedBox(height: 20,),


            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Password",
                hintStyle: TextStyle(fontSize: 20),
                prefixIcon: Icon(Icons.lock_outline),
                filled: true,
                fillColor: Colors.grey[300],


              ),
            ),

            Stack(alignment: Alignment.topRight,
              children: [
              Container(width: double.infinity,),
              Padding(
                padding: const EdgeInsets.only(top:20,bottom:60),
                child:InkWell(onTap:(){},child: Text("forget password ?",style: TextStyle(fontSize: 18,color: Color(0xFFeb1555)),)),
              )
            ],),

            Container(width: double.infinity,height: 60,
              decoration:BoxDecoration(
                color: Color(0xFFeb1555),
              ),
              child: MaterialButton(
                  child: Text("LOGIN",style: TextStyle(fontSize: 30,color: Colors.white),),
                  onPressed: (){}),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text("Don't Have An Acount ? ",style: TextStyle(fontSize: 18,color: Colors.white)),
                InkWell(onTap:(){}, child: Text("Register Now",style: TextStyle(fontSize: 17,color: Color(0xFFeb1555))))
              ],),),
            )
          ],),
        )
        ),
      ],),),
    );
  }
}
