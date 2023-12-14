import 'package:flutter/material.dart';
import 'package:fruitsmarket/core/utils/size_config.dart';
import 'package:fruitsmarket/core/widgets/space_widget.dart';

class pageviewitem extends StatelessWidget {
  const pageviewitem({Key? key, this.title, this.subtitle, this.image}) : super(key: key);
  final String? title;
  final String? subtitle;
  final String? image;



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VerticalSpace(15),

        SizedBox(
          height: SizeConfig.defaultSize!*21,
            child: Image.asset(image!)),
        VerticalSpace(3),
         Text(
          title!,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            color:  Color(0xff00fd88),
          ),
          textAlign: TextAlign.left,
        ),
        VerticalSpace(1.5),
        Text(
          subtitle!,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 15,
            color: const Color(0xff78787c),
          ),
          softWrap: false,
        ),

      ],

    );
  }
}
