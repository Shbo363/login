import 'package:flutter/material.dart';
import 'package:flutter20/bnb.dart';



class balyhome extends StatefulWidget {
  const balyhome({super.key});

  @override
  State<balyhome> createState() => _balyhomeState();
}

class _balyhomeState extends State<balyhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,),
      body: DefaultTabController(
        length: 2,
        child: ListView(
          children: [
        const TabBar(
        tabs: [
        Tab(
            icon: Icon(Icons.directions_car),
        text: "First Page",
        ),
        Tab(
          //    icon: Icon(Icons.directions_car),
          text: "Second Page",
        ),
        ],
      ),


            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const bnb()));
              },
              child: const Text(
                "Messages",
                style: TextStyle(fontSize: 70),
              ),
            ),











    ]
        )
    )

    );
  }
}
