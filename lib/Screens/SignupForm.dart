import 'package:flutter/material.dart';
import 'package:login_signup_database/Screens/LoginForm.dart';
import 'package:toast/toast.dart';
import '../comm/comHelper.dart';
import '../comm/getTextFormField.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({Key? key}) : super(key: key);

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {


  final _conUserId = TextEditingController();
  final _conUserName = TextEditingController();
  final _conEmail = TextEditingController();
  final _conPassword = TextEditingController();
  final _conCPassword = TextEditingController();

  signUp(){
    String uid = _conUserId.text;
    String uname = _conUserName.text;
    String email = _conEmail.text;
    String password = _conPassword.text;
    String cpassword = _conCPassword.text;
    alertDialog("Please Enter user ID");
    // if(uid.isEmpty){
    //   alertDialog(context,"Please Enter user ID");
    // }else if(uname.isEmpty){
    //   alertDialog(context,"Please Enter user Name");
    // }else if(email.isEmpty){
    //   alertDialog(context,"Please Enter Email");
    // }else if(password.isEmpty){
    //   alertDialog(context,"Please Enter Password");
    // }else if(cpassword.isEmpty){
    //   alertDialog(context,"Please Enter Confirm Password");
    // }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Signup Form'
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20.0),
                Text('Signup', style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 40.0),),
                SizedBox(height: 5.0),
                Image.asset('assets/what.jpg',
                  height: 150,
                  width: 150,
                ),
                SizedBox(height: 10.0),
                Text('Register here', style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.black45,
                    fontSize: 25.0),),

                getTextFormField(controller: _conUserId,
                  icon: Icons.person,
                  hintname: 'User ID',
                  isobscuretext: false,),

                getTextFormField(controller: _conUserName,
                  icon: Icons.person,
                  inputType: TextInputType.name,
                  hintname: 'User Name',
                  isobscuretext: false,),

                getTextFormField(controller: _conEmail,
                  icon: Icons.email,
                  inputType: TextInputType.emailAddress,
                  hintname: 'Email',
                  isobscuretext: false,),


                getTextFormField(controller: _conPassword,
                  icon: Icons.person,
                  hintname: 'Password',
                  isobscuretext: true,),


                getTextFormField(controller: _conCPassword,
                  icon: Icons.person,
                  hintname: 'Confirm Password',
                  isobscuretext: true,),


                Container(
                  margin: EdgeInsets.all(20.0),
                  width: double.infinity,
                  child: TextButton(
                    child: Text('Signup', style: TextStyle(color: Colors.white),),
                    onPressed: signUp,
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
                      Text('Do you have account?'),
                      TextButton(onPressed: (){
                        Navigator.pushAndRemoveUntil(context,
                            MaterialPageRoute(builder: (_) => loginForm()),
                            (Route<dynamic> route) => false);
                      },
                          child: Text('Login'))
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
