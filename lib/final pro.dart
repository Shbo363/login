import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class finalpage extends StatefulWidget {
  const finalpage({super.key});

  @override
  State<finalpage> createState() => _finalpageState();
}

class _finalpageState extends State<finalpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xFF060270),
      body: SafeArea(
        child: (
        Column(
          children: [
            SizedBox(height: 410,),
        Row(
          mainAxisAlignment:MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Treval',
            style: GoogleFonts.lobster(
fontSize: 50,
              color: Colors.white
            )







            ),
            Image.asset("image/earth.png"
              ,
              width: 80,
              height: 50,
              color: Colors.white,
            ),



          ],
        ),

SizedBox(height: 30,),
Text('Find your Dream\n'
    ' with us forever',
  style: GoogleFonts.lobster(
    fontSize: 20,
    color: Colors.white



  ),




)














        ],)






        ),
      ),
















      );
}
}

