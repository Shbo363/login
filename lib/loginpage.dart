import 'package:flutter/material.dart';
import 'package:flutter20/Register.dart';
//import 'package:sign_in_button/sign_in_button.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Column(children: [
                // logo
                const SizedBox(height: 25),
            Image.network(
              'https://th.bing.com/th?id=OIP.NpoC0E6IqMAcQo7vUG8eNAHaFj&w=288&h=216&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2',
              width: 250,
              height: 200,
            ),
            const Text(
              'Login in',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 25,
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
                  hintText: 'password',
                  prefixIcon: const Icon(Icons.key),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        width: 3, color: Colors.blue), //<-- SEE HERE
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
             SizedBox(height: 20,width: 60,),
              ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor:Colors.blue,  ),
                child: Text('Sign in',style: TextStyle(color:Colors.white,fontSize: 20,fontWeight:FontWeight.bold  ),
                ),
                onPressed: () {

                },

              ),























            SizedBox(
              height: 20,
            ),
            Text(
              'OR',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.greenAccent),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Register()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    const Padding(
                      padding: EdgeInsets.only(left: 24, right: 8),
                      child: Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height:20 ,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
              onPressed: () {
                //googleLogin();
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://th.bing.com/th/id/OIP.OpSmIPDsxgg-fcZ2fcL2uwHaGH?w=241&h=199&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                      height: 40,
                      width: 30,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 24, right: 8),
                      child: Text(
                        'Sign in with Apple',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ])));
    }
}
