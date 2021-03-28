import 'package:flutter/material.dart';
import 'package:user_form/Const/Constants.dart';
import 'package:user_form/widgets/Cards.dart';
const BottomContinerHight=80.0;
const CardColor=Color(0xFFF2F2F2);
const BottomContainerColor=Color(0xFF5c5c5c);
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
       title: Padding(
         padding: const EdgeInsets.only(left: 290.0,bottom: 8),
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
                  Expanded
                    (child: CardsContiner(Coluor:Color(0xFFF2F2F2)),
                  ),
                  Expanded(child: CardsContiner(Coluor: Color(0xFFF2F2F2))),
                ],
              )),
              Expanded(child:  CardsContiner()),
              Expanded(child: Row(
                children: [
                  Expanded(child: CardsContiner()),
                  Expanded(child:  CardsContiner()),
                ],
              ),
              ),
              Container(//Bottom Bar
                color: BottomContainerColor,
                margin: EdgeInsets.only(top:10.0 ),
                width: double.infinity,
                height: BottomContinerHight,
              )


              
            ],
          ),
    )

    );
  }}

