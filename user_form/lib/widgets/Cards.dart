import 'package:flutter/material.dart';
class CardsContiner extends StatelessWidget {
   CardsContiner({@required this.Coluor});
   final Color Coluor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0)
      ),
    );
  }
}
