import 'package:flutter/material.dart';
import 'package:flutter20/final%20pro.dart';
import 'package:flutter20/test.dart';



void main(){
runApp(Myapp());
}
class Myapp extends StatelessWidget {

  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: finalpage(),
    );
    }
}
