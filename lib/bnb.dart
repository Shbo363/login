import 'package:flutter/material.dart';
import 'package:flutter20/Register.dart';
import 'package:flutter20/homepage.dart';

  import 'homepage.dart';
 import 'loginpage.dart';

class bnb extends StatefulWidget {
  const bnb({super.key});

  @override
  State<bnb> createState() => _bnbState();
}

class _bnbState extends State<bnb> {
  int _selectedIndex = 0;

  List<Widget> _pages = [
    homepage(),


  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.white,
         title:  Image.asset("image/bale.jpg",height: 100,width: 330,),

    ),

    body:


    IndexedStack(
    index: _selectedIndex,
    children: _pages,
    ),
    bottomNavigationBar: BottomNavigationBar(
    // backgroundColor: Colors.blue,
    // fixedColor: Colors.blue,
    // unselectedItemColor: Colors.deepOrangeAccent,
    items: const <BottomNavigationBarItem>[
    BottomNavigationBarItem(
    icon: Icon(Icons.home),
    label: 'الرئيسية',
    ),
    BottomNavigationBarItem(
    icon: Icon(
    Icons.shopping_basket_sharp,
    color: Colors.green,
    ),
    label: 'السلة',
    ),
    BottomNavigationBarItem(
    icon: Icon(
    Icons.person,
    color: Colors.green,
    ),
    label: 'الحساب',
    ),
    ],
    currentIndex: _selectedIndex,
    onTap: _onItemTapped,
    ),





    );

  }

  }

















































