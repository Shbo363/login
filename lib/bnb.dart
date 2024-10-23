import 'package:flutter/material.dart';
import 'package:flutter20/Balyhome.dart';
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
         title:
             Image.asset("image/kham.png",height: 60,width: 330,),
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
    items: <BottomNavigationBarItem>[
    const BottomNavigationBarItem(
    icon: Icon(Icons.home,color: Colors.green,),
    label: 'الرئيسية',
    ),
    const BottomNavigationBarItem(
    icon: Icon(
    Icons.search,
    color: Colors.green,
    ),
    label: 'أبحث',
    ),
    const BottomNavigationBarItem(
    icon: Icon(
    Icons.person,
    color: Colors.green,
    ),
    label: 'الحساب',
    ),
      BottomNavigationBarItem(
        icon: IconButton( onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const balyhome()),
          );



            },
            icon: Icon( Icons.shopping_basket,color: Colors.green,)

    ),
            label:'السلة',

    ),
       BottomNavigationBarItem(
        icon: Icon(
          Icons.menu,
          color: Colors.green,
        ),
        label: 'القائمة',
      ),








    ],
    selectedLabelStyle: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 15),
    currentIndex: _selectedIndex,
    onTap: _onItemTapped,
      selectedItemColor: Colors.black,
    ),





    );

  }

  }

















































