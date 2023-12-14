import 'package:flutter/material.dart';
import 'package:fruitsmarket/feature/onborading/presentation/widgets/pageviewitem.dart';

class custompageview extends StatelessWidget {
  const custompageview({Key? key,@required this.pageController}) : super(key: key);
  final PageController?pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller:pageController ,
      children: [
        pageviewitem(
          image: 'assets/images/onbording1.png',
          title: 'E Shopping',
          subtitle: 'Explore  top organic fruits & grab them',
        ), pageviewitem(
          image: 'assets/images/onbording2.png',
          title: 'Delivery on the way',
          subtitle: 'Get your order by speed delivery',
        ), pageviewitem(
          image: 'assets/images/onbording3.png',
          title: 'Delivery Arrived',
          subtitle: 'Order is arrived at your Place',
        ),


      ],
    );


  }
}
