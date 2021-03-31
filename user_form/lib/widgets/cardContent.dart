import 'package:flutter/material.dart';
import '../Const/Constants.dart';

class contentCard extends StatelessWidget {
  contentCard({this.lable,this.bundle,this.height, this.width });
  final String lable;
  final String bundle;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child:
          Image.asset( bundle,
            height: height,
            width: width,
            fit: BoxFit.cover,
          ),),
        SizedBox(height:10.0),
        Text(lable,style: TextStyles,)
      ],
    );
  }
}

