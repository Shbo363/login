import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(backgroundColor: Colors.white,

        ),

      body: Column(
        children: [

        Padding(
          padding: const EdgeInsets.all(10),
          child: TextField(

          decoration: InputDecoration(
            hintText: 'Search...',
            // Add a clear button to the search bar
            suffixIcon: ElevatedButton(
              style:ElevatedButton.styleFrom(backgroundColor:Colors.green,  ),
              child: const Text('بحث',style: TextStyle(color:Colors.white,fontSize: 20,fontWeight:FontWeight.bold  ),
              ),
                onPressed: (){

                },



                )
            ),

            ),
        ),
const Text("أكبر سوق عربي للخدمات المصغرة ",style: TextStyle(fontSize: 25, ),

),

const SizedBox(height: 40,),
          Row( children: [
            Padding(
              padding: const EdgeInsets.all(15,),
              child: Container(
               width: 160,
                height: 100,
                child: const Center(child: Text('البرمجة والتطوير',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.white),)),
decoration:const BoxDecoration(
  image:DecorationImage(image:AssetImage("image/download.jpg"),
    fit: BoxFit.fill,



  )




) ,
     ),

            ),

          Container(

          width: 160,
            height: 100,
            child: const Center(child: Text('الكتابة والترجمة',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.white),)),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    "image/write.png"),
                fit: BoxFit.fill,
              ),

            ),

          ),


          ],

          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row( children: [
              Container(

                width: 160,
                height: 100,
                child: const Center(child: Text('التسويق الرقمي',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.white),)),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        "image/digit.png"),
                    fit: BoxFit.fill,
                  ),

                ),







              ),
              const SizedBox(width: 15,),
              Container(

                width: 160,
                height: 100,
                child: const Center(child: Text('الأعمال',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.white),)),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        "image/buss.png"),
                    fit: BoxFit.fill,
                  ),

                ),





              ),

            ],
            ),
          ),
          Row( children: [
            Padding(
              padding: const EdgeInsets.all(15,),
              child: Container(
                width: 160,
                height: 100,
                child: const Center(child: Text('الصوتيات',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.white),)),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        "image/voice.png"),
                    fit: BoxFit.fill,
                  ),

                ),



              ),

            ),
Stack(
           children:[ Container(

              width: 160,
              height: 100,


              child: const Center(child: Text('الذكاء الاصطناعي',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.white),)),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      "image/Ai.png"),
                  fit: BoxFit.fill,
                ),

              ),




            )
              ]
            ),


          ],

          ),































        ],

      )








    );


  }


  }
