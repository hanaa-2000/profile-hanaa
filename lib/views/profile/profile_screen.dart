import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/views/profile/components/details_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../consts/lists.dart';
import '../../controllers/auth_controller.dart';
import '../../widgets/background_widget.dart';
import '../auth/login_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return backgroundWidget(
      child: Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //edit button
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Align(
                alignment: Alignment.topRight,
                child: Icon(Icons.edit,color:whiteColor),
              ).onTap(() {

              }),
            ),

            //user details section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Image.asset(imgProfile2,width: 100,fit: BoxFit.cover,).box.roundedFull.clip(Clip.antiAlias).make(),
                  10.widthBox,
                  Expanded(
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "Dummy User".text.white.fontFamily(semibold).make(),
                        5.heightBox,
                        "customer@gmail.com".text.white.make(),
                      ],
                    ) ,
                  ),
                 OutlinedButton(
                   style: OutlinedButton.styleFrom(
                     side: const BorderSide(
                       color: whiteColor,
                     ),
                   ),
                   onPressed: ()async{
                     await Get.put(AuthController()).signOutUser(context);
                     Get.offAll(()=>const LoginScreen());
                   },
                     child:"logout".text.white.fontFamily(semibold).make(),
                 ) ,
                ],
              ),
            ),
            20.heightBox,

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                detailsCard(
                  title: "in your cart" ,
                  width:context.screenWidth /3.3,
                  count:"00",
                ),
                detailsCard(
                  title: "in your wishlist" ,
                  width:context.screenWidth /3.3,
                  count:"32",
                ),
                detailsCard(
                  title: " your orders" ,
                  width:context.screenWidth /3.3,
                  count:"87",
                ),
              ],
            ),

             // button section
            ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context,index){
                return const Divider(
                  color: lightGrey,
                );
              },
                itemCount: profileButtonList.length,
                itemBuilder: (context,index){
                  return ListTile(
                    leading: Image.asset(profileButtonIcons[index] ,width: 22,),
                    title: profileButtonList[index].text.fontFamily(semibold).color(darkFontGrey).make(),
                  );
                },

            ).box.white.rounded.margin(const EdgeInsets.all(12)).padding(const EdgeInsets.symmetric(horizontal: 16)).shadowSm.make().box.color(redColor).make(),

          ],
        ),
      ),
      )
    );
  }
}
