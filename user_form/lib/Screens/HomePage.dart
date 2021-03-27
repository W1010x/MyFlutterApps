import 'package:flutter/material.dart';
import 'package:user_form/Const/Constants.dart';
import 'package:user_form/widgets/Cards.dart';
class homePage extends StatefulWidget {

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       elevation: 0,
       backgroundColor: Color(0xff28434c) ,
       title:  Padding(
         padding: const EdgeInsets.only(left: 290.0,bottom: 8),
         child: Container(
           decoration: BoxDecoration(
             color: Color(0xff8a989e),
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
     ),
        body: Container(
          width: double.infinity,
          //  height: 300,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end:
                Alignment(0.8, 0.0), // 10% of the width, so there are ten blinds.
                colors: <Color>[
                  Color(0xff28434c),
                  Color(0xff8a989e),
                ],
              )
          ),
          child: Column(
            children: [
              Expanded(child:Row(
                children: [
                  Expanded(child: CardsContiner(),
                  ),
                  Expanded(child: CardsContiner()),
                ],
              )),
              Expanded(child:  CardsContiner()),
              Expanded(child: Row(
                children: [
                  Expanded(child: CardsContiner()),
                  Expanded(child:  CardsContiner()),
                ],
              ))

              
            ],
          ),
    )
    );
  }}

