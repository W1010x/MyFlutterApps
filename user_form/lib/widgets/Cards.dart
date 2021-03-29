import 'package:flutter/material.dart';
class CardsContiner extends StatelessWidget {
   CardsContiner({@required this.Coluor,this.cardChild});
   final Color Coluor;
   final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child:cardChild ,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: Coluor,
          borderRadius: BorderRadius.circular(10.0)
      ),
    );
  }
}
