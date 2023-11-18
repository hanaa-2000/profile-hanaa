import 'package:coffee/wedigts/Custom_text_field.dart';
import 'package:coffee/wedigts/buttom_nav_bar.dart';
import 'package:coffee/wedigts/button_action.dart';
import 'package:coffee/wedigts/current_text.dart';
import 'package:coffee/wedigts/custom_app_bar.dart';
import 'package:coffee/wedigts/custom_promo.dart';
import 'package:coffee/wedigts/custom_welcome.dart';
import 'package:coffee/wedigts/list_cake.dart';
import 'package:coffee/wedigts/list_coffee.dart';
import 'package:coffee/wedigts/list_snack.dart';
import 'package:flutter/material.dart';



class Home_View extends StatefulWidget{
  const Home_View({Key? key}) : super(key: key);
  @override
  _Home_View createState()=> _Home_View();
}
class _Home_View extends State<Home_View> {

   int x=0;
    buildIndex(int index) {
     setState(() {
       x=index;
     });
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      bottomNavigationBar:const  CustomBottomNavigation(),
        body : Column(
          children:[
            AppBarBody(color: Colors.grey.shade200),
         const   CustomWelcome(),
          const  CustomTextSearch(),

           SizedBox(height: 60,child: ButtonAction(buildIndex:buildIndex ,)),
            const TextPromo(),
            CustomPromo(),
            const TextAfterPromo(),
            if(x==0)
            const  Expanded(
              child:ListCoffee(),
            ),
            if(x==1)
              const  Expanded(
                child:ListCake(),
              ),
            if(x==2)
              const  Expanded(
                child:ListSnack(),
              ),




          ],

        )
    );
  }


}
// Padding(
//   padding:const EdgeInsets.symmetric(horizontal: 15)  ,
//   child: Row(
//     mainAxisAlignment: MainAxisAlignment.center,
//   children:[
//       CustomButton(
//         onTap: (){
//
//           setState(() {
//             isClicked=!isClicked;
//           });
//
//         },
//         title: 'Coffee',
//         image: 'assets/images/images.jpg',
//         isClicked: isClicked,
//       ),
//   const  SizedBox(
//       width: 10,
//     ),
//     CustomButton(
//       onTap: (){
//         setState(() {
//
//         });
//
//       },
//       title: 'Cake',
//       image: 'assets/images/cake.jpg',
//     ),
//  const   SizedBox(
//       width: 10,
//     ),
//     CustomButton(
//       onTap: (){
//         setState(() {
//
//         });
//
//       },
//       isClicked: isClicked,
//       title: 'Snack',
//       image: 'assets/images/snack.jpg',
//     ),
//   ],
//
//   ),
// ),