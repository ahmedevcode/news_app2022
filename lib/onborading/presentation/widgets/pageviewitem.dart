import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/core/utils/size_config.dart';
import 'package:news_app_ui_setup/core/widgets/space_widget.dart';

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
          height:400,
            child: SizedBox(
              height:667,
                width: 1000,

                child: Image.asset(image!))),
        VerticalSpace(3),
         Text(
          title!,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            color:  Colors.cyan,
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
