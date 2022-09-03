import 'package:flutter/material.dart';
import 'package:login_signup_database/Screens/LoginForm.dart';
import 'package:login_signup_database/Screens/SignupForm.dart';
import 'package:login_signup_database/comm/TextButton.dart';
import 'package:google_fonts/google_fonts.dart';

import 'DocPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Row(
            children: [
              Text('Welcome'),
              Padding(padding: EdgeInsets.symmetric(horizontal: 50)),
              TextButton(
                  style: TextButton.styleFrom(
                      primary: Colors.red,
                      elevation: 2,
                      backgroundColor: Colors.white30),
                  onPressed:(){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => loginForm()));
                  },
                  child: Text('Signin',style: TextStyle(color: Colors.black),)),


              Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
              TextButton(
                  style: TextButton.styleFrom(
                      primary: Colors.red,
                      elevation: 2,
                      backgroundColor: Colors.white30),
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => SignupForm()));
                  },
                  child: Text('Signup',style: TextStyle(color: Colors.black))),
            ],
          ),
        ),
      ),

      body: Scrollbar(
        child: Container(padding: EdgeInsets.symmetric(vertical: 20),
          child: Center(
            child: Column(
              children: [
                Text('Welcome to Doc+',style: GoogleFonts.akayaTelivigala(fontSize: 30, color: Colors.purple),),

                Image.asset('assets/doctor.jpg'),
                


                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(80),
                          topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(20))
                    ),
                    child:
                    Text('Here World class doctor available you can get appointment take treatment online you can get online appointment',
                    style: GoogleFonts.akayaTelivigala(fontSize: 25),),
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(20.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Column(
                    children: [
                      TextButton(
                          onPressed: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => docpage()));
                          },
                          child: Text('See Doctors',style: TextStyle(color: Colors.black)),
                      ),
                    ],
                  ),
                ),


              ],
            ),
          ),
        ),
      ),







    );
  }
}
