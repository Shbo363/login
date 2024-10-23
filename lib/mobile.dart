import 'package:flutter/material.dart';

class mobile extends StatefulWidget {
  const mobile({super.key});

  @override
  State<mobile> createState() => _mobileState();
}

class _mobileState extends State<mobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(children: [
Text('أنشاء تطبيق',
style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),



),
SizedBox(height: 25,),
          
          Container(height: 150,width: 320,
            decoration:const BoxDecoration(
                image:DecorationImage(image:AssetImage("image/flut.png"),
                  fit: BoxFit.fill,
                  
                )
                    
            ) ,
            
          ),

Text('برمجة تطبيقات اندرويد وايفون',
style: TextStyle(fontSize: 20),



),

    Text('تبدا من 20 د.ع ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)   ,

          SizedBox(height: 80,),






          Container(height: 150,width: 320,


            decoration:const BoxDecoration(
                image:DecorationImage(image:AssetImage("image/iosa.png"),
                  fit: BoxFit.fill,



                )




            ) ,

          ),

          Center(
            child: Text('  swifft  برمجة تطبيقات ايفون ب ',
              style: TextStyle(fontSize: 20),



            ),
          ),

          Text('تبدا من 30 د.ع ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)   ,




























        ],





























        ),
      ),

















    );
  }
}
