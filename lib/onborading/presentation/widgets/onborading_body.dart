import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:news_app_ui_setup/core/utils/size_config.dart';
import 'package:news_app_ui_setup/core/widgets/custombuttons.dart';
import 'package:news_app_ui_setup/views/home_view.dart';
import 'custom_indicator.dart';
import 'custompageview.dart';


class Onbordingbody extends StatefulWidget {
  const Onbordingbody({Key? key}) : super(key: key);

  @override
  State<Onbordingbody> createState() => _OnbordingbodyState();
}

class _OnbordingbodyState extends State<Onbordingbody> {
  PageController?pageController;

  @override
  void initState() {
    pageController=PageController(
      initialPage: 0,
    )..addListener(() {setState(() {

    });});
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        custompageview(
          pageController: pageController,
        ),
        Positioned(
          bottom: 20,
          left: 0,
          right: 0,
          child: custom_indicator(
            dotsindex: pageController!.hasClients?pageController?.page:0,
          ),
        ),
        Visibility(
          visible: pageController!.hasClients?(pageController!.page==2?false:true):true,
          child: Positioned(
            top:  50,
            right: 35,
            child: const Text(
              'Skip',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
                fontSize: 14,
                color:  Colors.cyan,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
        Positioned(
            bottom: 10,
            left: 10,
            right: 10,

            child:  customgeneralbutton(
              onTap: (){
                if(pageController!.page!<2){
                  pageController!.nextPage(duration:Duration(milliseconds: 500), curve: Curves.easeIn);
                }
                else
                {
                  Get.to(()=>HomeView(),transition: Transition.rightToLeft,duration:Duration(milliseconds: 500) );
                }
              },
              text: pageController!.hasClients?( pageController!.page==2 ?'Get started':'Next'):'Next',
            )),
      ],


    );
  }


}
