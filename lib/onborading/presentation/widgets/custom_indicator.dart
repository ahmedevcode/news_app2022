import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';


class custom_indicator extends StatelessWidget {
  const custom_indicator({Key? key, required this.dotsindex}) : super(key: key);
  final double? dotsindex;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      decorator: DotsDecorator(
          color:Colors.transparent ,
          activeColor: Colors.orange,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(color: Colors.orange),
          )
      ),
      dotsCount: 3,
      position: 1,

    );
  }
}
