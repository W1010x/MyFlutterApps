import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'package:user_form/Const/Constants.dart';
class LoginScreen extends StatefulWidget {
  static const  String id='login';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email;
  String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        //  height: 300,
        decoration: const BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topLeft,
        end:
        Alignment(0.8, 0.0), // 10% of the width, so there are ten blinds.
    colors: <Color>[
    Color(0xffff7e8b),
    Color(0xfff7c1b4),
    ],
    )
    ),
    child:Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

           Container(

                height: 400.0,
              child: Image.asset('assets/relax.png',),
              ),
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: Text(
                '  Log In   ',
                style:TextStyle(
                  color: Color(0xFF997068),
                    fontSize: 25,
                  fontWeight: FontWeight.w500
                ),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,// to show @ in the kay bord
              textAlign: TextAlign.center,
              onChanged: (value) {
                //Do something with the user input.
                email=value;
              },
              decoration: kTextFieldDecoration.copyWith(
                  hintText: "Enter your Email"
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
                obscureText: true,//to hide the password
                textAlign: TextAlign.center,
                onChanged: (value) {
                  //Do something with the user input.
                  password=value;
                },
                decoration: kTextFieldDecoration.copyWith(
                    hintText: "Enter your Password")
            ),
            SizedBox(
              height: 24.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                color: Color(0xffff7e8b),
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                elevation: 5.0,
                child: MaterialButton(
                    minWidth:200.0,
                    height: 42.0,
                    child: Text(
                      'Log In',
                    ),
                  onPressed: () {
                    //Implement login functionality.
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => homePage()),
                    );
                  }

                  // onPressed: ()async {
                  //   try {
                  //     final user = await _auth
                  //         .signInWithEmailAndPassword(
                  //         email: email, password: password);
                  //     if(user!=null){
                  //       Navigator.pushNamed(context, homePage.id);
                  //     }
                  //   }catch(e){
                  //     print (e);
                  //   }
                  // },

                ),
              ),
            ),
          ],
        ),
      ),
      )
    );

  }
}

