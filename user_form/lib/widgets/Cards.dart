import 'package:flutter/material.dart';
class CardsContiner extends StatelessWidget {
  const CardsContiner({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10.0)
      ),
    );
  }
}
