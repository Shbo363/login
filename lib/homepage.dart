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

      body:
      ListView(

        padding: const EdgeInsets.all(20),
        children: [


          myCard("image/food.jpg"),
          myCard("image/taxi.jpg"),
          myCard("image/sign.jpg"),
          myCard("image/traa.jpg"),

        ]

    )

    );


  }

  Container myCard(String image){
    return  Container(
      margin: const EdgeInsets.only(top: 20),
      padding:const EdgeInsets.only(top: 30) ,
      height: 200,
      width: 350,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              // image: NetworkImage("https://cdn.pixabay.com/photo/2014/06/03/19/38/board-361516_640.jpg")),
              image: AssetImage(image)
          ),

          color: Colors.blue,
          // borderRadius: BorderRadius.circular(20),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
          border: Border.all(width: 1, color: Colors.grey),
          boxShadow: [
            const BoxShadow(
                blurRadius: 5,
                spreadRadius: 1,
                color: Colors.blueAccent,
                offset: Offset(2, 6)),
          ]),
        child:  const Column(
          children: [

          ],
        ),
    );
  }
}