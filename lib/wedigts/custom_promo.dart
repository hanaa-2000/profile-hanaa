import 'package:carousel_slider/carousel_slider.dart';
import 'package:coffee/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';



class CustomPromo extends StatefulWidget{
  CustomPromo({Key? key}) : super(key: key);
  @override
  _CustomPromo createState()=> _CustomPromo();
}


class _CustomPromo extends State<CustomPromo> {

 final List<String> images=[
  'assets/images/corner.jpg',
  'assets/images/corner1.jpg',
  'assets/images/corner2.jpg',
  'assets/images/corner3.jpg',
  'assets/images/corner4.jpg',
  'assets/images/take1.jpg',
  'assets/images/take2.jpg',
  'assets/images/take4.jpg'
];
int current=0;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children:[
        CarouselSlider(
        options: CarouselOptions(
          enlargeCenterPage:true,
          height: 150,
          reverse: true,
          autoPlay: true,
          aspectRatio: 18/8,
          autoPlayInterval: const Duration(seconds: 2),
          onPageChanged: (index,reason){
            setState(() {
              current= index   ;
            });
         }


        ),
        items: generateImage(),
      ),
      const  SizedBox(
          height: 5,
        ),
       buildIndicate(),



    ]
    );
  }

  List<Widget>generateImage(){
    return images.map((element)=>ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: Image.asset(element,fit: BoxFit.cover,width: double.infinity,height: 130),

    ),
    ).toList();
  }

  Widget buildIndicate()=>AnimatedSmoothIndicator(
    count: images.length,
    effect: const JumpingDotEffect(
      dotWidth: 10,
      dotHeight: 10,
      dotColor: kDoteColor,
      activeDotColor: kPrimaryColor,
    ),
    activeIndex: current ,
  );
}
