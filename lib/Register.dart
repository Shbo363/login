import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> with SingleTickerProviderStateMixin {


  @override
  void initState() {
    super.initState();

  }

  @override
  void dispose() {

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Register',style: TextStyle(fontWeight: FontWeight.bold),),
      ),

      body: SafeArea(child: Center(
        child: Column(children: [
          SizedBox(height: 40,),
          Icon(Icons.person,size: 80,),
SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Full Name',
                prefixIcon: const Icon(Icons.person_4),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      width: 3, color: Colors.blue), //<-- SEE HERE
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Email',
                prefixIcon: const Icon(Icons.email),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      width: 3, color: Colors.blue), //<-- SEE HERE
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'New password',
                prefixIcon: const Icon(Icons.key),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      width: 3, color: Colors.blue), //<-- SEE HERE
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(height: 20,width: 40,),
          ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor:Colors.blue,  ),
            child: Text('Register',style: TextStyle(color:Colors.white,fontSize: 20,fontWeight:FontWeight.bold  ),
            ),
            onPressed: () {

            },

          ),
        
        
        
        
        
        
        
        





        ],
        
        
        
        
        
        
        
        
        
        ),
      )),








    );

  }
}













































































