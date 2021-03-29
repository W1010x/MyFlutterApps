import 'package:flutter/material.dart';

class contentCard extends StatelessWidget {
  contentCard({this.lable,this.bundle});
  final String lable;
  final String bundle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Image.asset(
            bundle,
            height: 100.0,
            width: 100.0,
            fit: BoxFit.cover,
          ),),
        SizedBox(height:10.0),
        Text(lable)
      ],
    );
  }
}

