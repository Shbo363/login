


import 'package:flutter/material.dart';
import 'package:flutter20/Apiw.dart';

class TestPage extends StatelessWidget {
   TestPage({super.key});
   Mug mug = Mug();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar (backgroundColor:Colors.blueAccent ,title:const Center(child: Text('المقالات',style: TextStyle(color: Colors.white,fontSize: 40),)) ,),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        onPressed: (){
          mug.post("fasdfasdf", {
            "title":"hello world",
          });
        },
        child: const Icon(Icons.add, color: Colors.white, size: 28),

      ),
      body: Column(
        children: [
         const  SizedBox(height: 100,),
          Stack(
            children: [
              Center(child: Image.asset("image/Ai.png")),
              Positioned(
                right: 70,
                child: IconButton(
                    onPressed: (){
                      mug.delete("https//mustfa.com/pageDelete.php", {
                        "id":1
                      });
                    }, 
                    icon: const Icon(Icons.delete,
                      size: 36,
                      color: Colors.white,
                    ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10,),
          const Text('أهمية الذكاء الأصطناعي',style: TextStyle(fontSize: 30),),
const SizedBox(height: 50,),

          ElevatedButton.icon(style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),),
            icon: const Icon(
              Icons.more,
              color: Colors.white,
              size: 24.0,
            ),
            label: const Text('اقرا المزيد',style: TextStyle(fontSize: 30,color: Colors.white),),
            onPressed: () {
            mug.get("https//mustfa.com/pageDelete.php");


            },
          ),
SizedBox(height: 15,),
          ElevatedButton.icon(style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),),
            icon: const Icon(
              Icons.edit,
              color: Colors.white,
              size: 24.0,
            ),
            label: const Text('تعديل المقالات',style: TextStyle(fontSize: 30,color: Colors.white),),
            onPressed: () {
            mug.updateResource("https//mustfa.com/pageDelete.php",Map());
















            },
          )






































        ],
      ),
    );
  }
}
