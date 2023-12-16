import 'package:flutter/material.dart';

import 'pageviewitem.dart';

class custompageview extends StatelessWidget {
  const custompageview({Key? key,@required this.pageController}) : super(key: key);
  final PageController?pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller:pageController ,
      children: [
        pageviewitem(
          image: 'assets/onborading2.jpg',
          title: 'world ',
          subtitle: 'breaking_news for the world in different fields ',

        ),
        pageviewitem(
          image: 'assets/onborading4.jpeg',
          title: 'technology',
          subtitle: 'Explore  top news of technology',
        ), pageviewitem(
          image: 'assets/onborading3.jpg',
          title: 'Sports',
          subtitle: ' sports was mostly illegal under federal law',
        ),


      ],
    );


  }
}
