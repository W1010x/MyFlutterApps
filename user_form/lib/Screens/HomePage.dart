import 'package:flutter/material.dart';
import 'package:user_form/Screens/Login.dart';
import 'package:user_form/widgets/cardContent.dart';
import 'package:user_form/widgets/Cards.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:user_form/widgets/slider.dart';
const BottomContinerHight=80.0;
const CardColor=Color(0xFFF2F2F2);
const BottomContainerColor=Color(0xFF5c5c5c);
const ActivColor=Color(0xFFa9b9d1);
const unctivColor=Color(0xFFdadce0);

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}
class _homePageState extends State<homePage> {
  // any var here cannot be const or final should be var
  Color firstCard = unctivColor;
  Color secondCard = unctivColor;

  void updateCard(int gender) {
    if (gender == 1) {
      if (firstCard == unctivColor) {
        firstCard = ActivColor;
      } else {
        firstCard = unctivColor;
      }
    }
    //
    if (gender == 2) {
      if (secondCard == unctivColor) {
       secondCard = ActivColor;
      } else{
        secondCard = unctivColor;
    }
  }
}

// ---------//
  int _currentIndex=0;

  List cardList=[
    Item1(),
    Item2(),
    Item3(),
    Item4()
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       elevation: 0,
       backgroundColor: Color(0xff28434c) ,
       title: Text('الصفحه الرئيسيه')
     ),
        body: Container(
       color: Color(0xffffffff),
          child: Column(
            children: [
              CarouselSlider(

                options: CarouselOptions(
                  autoPlay: true,
                  height: 200.0,
                  autoPlayInterval: Duration(seconds: 1),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  pauseAutoPlayOnTouch: true,
                  aspectRatio: 2.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                ),
                items: cardList.map((card){
                  return Builder(
                      builder:(BuildContext context){
                        return Container(
                          height: MediaQuery.of(context).size.height*0.30,
                          width: MediaQuery.of(context).size.width,
                          child: Card(
                            color: Colors.blueAccent,
                            child: card,
                          ),
                        );
                      }
                  );
                }).toList(),
              ),
              Expanded(
                  child: GestureDetector(
                    child: CardsContiner(
                      Coluor:firstCard,
                    ),
                  )
              ),
              Expanded(child:Row(
                children: [
                  Expanded
                    (child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updateCard(1);
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginScreen()));
                      });
                    },
                      child: CardsContiner(
                      Coluor:firstCard,
                      cardChild: contentCard(
                        bundle: 'assets/brain.png',
                        lable: 'انضم كمطرب',
                        height: 100,
                        width: 100,
                      ),
                  ),
                    ),
                  ),
                  Expanded(
                      child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updateCard(2);
                      });
                    },
                    child: CardsContiner(
                        Coluor: secondCard,
                      cardChild: contentCard(
                        bundle: 'assets/meeting.png',
                        lable: 'اعثر على مطرب',
                        width: 100,
                        height: 100,
                      ),
                    ),
                  )),
                ],
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
