import 'package:flutter/material.dart';
import 'package:login_signup_database/Screens/SignupForm.dart';
import '../comm/getTextFormField.dart';

class loginForm extends StatefulWidget {
  const loginForm({Key? key}) : super(key: key);

  @override
  State<loginForm> createState() => _loginFormState();
}

class _loginFormState extends State<loginForm> {
  final _conUserId = TextEditingController();
  final _conPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to BannuBook'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 50.0),
                Text('Login', style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 40.0),),
                SizedBox(height: 10.0),
                Image.asset('assets/what.jpg',
                height: 200,
                  width: 200,
                ),
                SizedBox(height: 10.0),
                Text('Login here and enjoy', style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.black45,
                    fontSize: 25.0),),
                getTextFormField(controller: _conUserId,
                    icon: Icons.person,
                    hintname: 'User ID',
                isobscuretext: false,),

                getTextFormField(controller: _conPassword,
                    hintname: 'Password',
                    icon: Icons.lock,
                    isobscuretext: true),

                Container(
                  margin: EdgeInsets.all(20.0),
                  width: double.infinity,
                  child: TextButton(
                    child: Text('Login', style: TextStyle(color: Colors.white),),
                    onPressed: (){},
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30.0)
                  ),
                ),
                
                
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have account?'),
                      TextButton(onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => SignupForm()));
                      },
                          child: Text('Sign Up'))
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
