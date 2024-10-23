import 'package:flutter/material.dart';
import 'package:flutter20/bnb.dart';
import 'package:flutter20/mobile.dart';



class balyhome extends StatefulWidget {
  const balyhome({super.key});

  @override
  State<balyhome> createState() => _balyhomeState();
}

class _balyhomeState extends State<balyhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white54,
      appBar: AppBar(backgroundColor: Colors.white,
      //title: Text('برمجة وتطوير',style: TextStyle(color:Colors.black,fontSize: 30),),
      
      
      ),
      
      body:

        Column(
           children: [

           Center(child: Text('برمجة وتطوير',style:TextStyle(fontSize: 30,color: Colors.black) ,)),
SizedBox(height: 20,),

             Container(height: 80,width: 320,color: Colors.white,
               child: Center(child: Text('أنشاء متجر الكتروني',style: TextStyle(color: Colors.black,fontSize: 20),)),
















             ),

SizedBox(height: 20,),
            Container(height: 80,width: 320,color: Colors.green,

             child: InkWell(
               child: Container(height: 80,width: 320,color: Colors.white,child:Center(
                 child: Text('أنشاء تطبيق الجوال',
                 style: TextStyle(fontSize: 20,color: Colors.black),


                 ),
               ) ,




               ),

               onTap: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => const mobile()),
                 );





               },

             )
             ),

             
             


             SizedBox(height: 20,),


             Container(height: 80,width: 320,color: Colors.white,
               child: Center(child: Text('أنشاء موقع الكتروني',style: TextStyle(color: Colors.black,fontSize: 20),)),

             ),


             SizedBox(height: 20,),


             Container(height: 80,width: 320,color: Colors.white,
               child: Center(child: Text('أنشاء موقع ووردبريس',style: TextStyle(color: Colors.black,fontSize: 20),)),



             ),

















    ],








        )



    );
  }
}
