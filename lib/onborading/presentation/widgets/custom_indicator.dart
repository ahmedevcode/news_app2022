import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants.dart';

class custom_indicator extends StatelessWidget {
  const custom_indicator({Key? key, required this.dotsindex}) : super(key: key);
  final double? dotsindex;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      decorator: DotsDecorator(
          color:Colors.transparent ,
          activeColor: kMainColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(color: kMainColor),
          )
      ),
      dotsCount: 3,
      position: dotsindex!,

    );
  }
}
