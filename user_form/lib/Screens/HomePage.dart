import 'package:flutter/material.dart';
import 'package:user_form/Const/Constants.dart';
import 'package:user_form/widgets/cardContent.dart';
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
       title: Text('Home Page')
     ),
        body: Container(
       color: Colors.blueGrey,
          child: Column(
            children: [
              Expanded(child:Row(
                children: [
                  Expanded
                    (child: CardsContiner(
                    Coluor:Color(0xFFF2F2F2),
                    cardChild: contentCard(
                      bundle: 'assets/io.jpg',
                      lable: 'Samar',
                    ),
                  ),
                  ),
                  Expanded(child: CardsContiner(
                      Coluor: Color(0xFFF2F2F2),
                    cardChild: contentCard(
                      bundle: 'assets/relax.png',
                      lable: 'Samar',
                    ),
                  )),
                ],
              )
              ),
              Expanded(
                  child:CardsContiner(
                  Coluor:Color(0xFFF2F2F2),
              )
              ),
              Expanded(
                child: Row(
                children: [
                  Expanded(
                      child:CardsContiner(
                      Coluor:Color(0xFFF2F2F2),
                  ),
                  ),
                  Expanded(
                      child:CardsContiner(
                      Coluor:Color(0xFFF2F2F2),
                  ),
                  ),
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
