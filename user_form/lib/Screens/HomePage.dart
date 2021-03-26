import 'package:flutter/material.dart';
import 'package:user_form/Const/Constants.dart';

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,

        body:
        Container(
          width: double.infinity,
          //  height: 300,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end:
                Alignment(0.8, 0.0), // 10% of the width, so there are ten blinds.
                colors: <Color>[

                  Color(0xffff7e81),
                  Color(0xfff7c1b4),
                ],
              )
          ),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top:40.0,left: 350.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffff7e8b),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: new IconButton(
                      icon: new Icon(
                        Icons.list_rounded,
                        size: 30.0,
                        color: Colors.white,
                      ),onPressed: null),
                ),
              ),

              //// Column 2
              SizedBox(height: 20,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Welcome Samar,How are you today?'
                    , style: TextStyle(
                      color: Color(0xFF635552),
                      fontSize:18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 25,),
                  Padding(
                    padding: const EdgeInsets.only(left: 50,right: 50),
                    child: TextField(
                        obscureText: true,//to hide the password
                        textAlign: TextAlign.center,
                        onChanged: (value) {
                          //Do something with the user input.
                        },
                        decoration: kTextFieldDecoration.copyWith(
                            hintText: "Sreach....",)
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Column(
                children: [
                  Container(
                    width: 400,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                    ),
                  )
                ],),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 40,right: 30),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 150,
                            height: 200,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                          SizedBox(width: 30.0,),
                          Container(
                            width: 150,
                            height: 200,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)
                            ),
                          ),

                        ],
                      ),
                      SizedBox(height: 40.0,),
                      Row(
                        children: [
                          Container(
                            width: 150,
                            height: 200,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                          SizedBox(width: 30.0,),
                          Container(
                            width: 150,
                            height: 200,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )


            ],

          ),

        )
    );

  }
}


