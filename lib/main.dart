import 'package:flutter/material.dart';
import 'package:flutter20/loginpage.dart';





void main(){

runApp(const Myapp());

}
class Myapp extends StatelessWidget {

  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),


    );
  }
}