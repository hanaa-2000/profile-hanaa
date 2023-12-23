import 'package:emart_app/consts/colors.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:flutter/material.dart';

import '../../consts/lists.dart';
import '../../widgets/custom_button.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: lightGrey,
        appBar: AppBar(
          title: title!.text.color(darkFontGrey).fontFamily(bold).make(),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_outline,
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        VxSwiper.builder(
                            itemCount: 3,
                            autoPlay: true,
                            height: 350,
                            aspectRatio: 16 / 9,
                            itemBuilder: (context, index) {
                              return Image.asset(
                                imgFc5,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              );
                            }),

                        // text
                        10.heightBox,
                        title!.text
                            .size(16)
                            .color(darkFontGrey)
                            .fontFamily(semibold)
                            .make(),
                        10.heightBox,

                        VxRating(
                          onRatingUpdate: (value) {},
                          normalColor: textfieldGrey,
                          selectionColor: golden,
                          count: 5,
                          size: 25,
                          stepInt: true,
                        ),
                        10.heightBox,

                        "\$30,000"
                            .text
                            .color(redColor)
                            .fontFamily(bold)
                            .size(18)
                            .make(),
                        Row(

                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  "Sellers"
                                      .text
                                      .white
                                      .fontFamily(semibold)
                                      .make(),
                                  5.heightBox,
                                  "In House Brand"
                                      .text
                                      .fontFamily(semibold)
                                      .color(darkFontGrey)
                                      .size(16)
                                      .make(),
                                ],
                              ),
                            ),
                            const CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.message_rounded,
                                color: darkFontGrey,
                              ),
                            ),
                          ],
                        ).box.height(68).padding(const EdgeInsets.symmetric(horizontal: 16)).color(textfieldGrey).make(),
                        //color section
                        20.heightBox,
                        Column(
                          children: [
                            //color
                            Row(
                              children: [
                                SizedBox(
                                  width: 100,
                                  child: "Color: ".text.color(textfieldGrey).make(),
                                ),
                                Row(
                                  children:List.generate(
                                  3,
                                    (index) => VxBox(

                                    ).size(40, 40).roundedFull.color(Vx.randomPrimaryColor).margin(const EdgeInsets.symmetric(horizontal: 4)).make(),),
                                ),
                              ],
                            ).box.padding(const EdgeInsets.all(8)).make(),
                         //quantity
                            Row(
                              children: [
                                SizedBox(
                                  width: 100,
                                  child: "Quantity: ".text.color(textfieldGrey).make(),
                                ),
                                Row(
                                  children: [
                                    IconButton(onPressed: (){},
                                        icon: const Icon(Icons.remove)
                                    ),
                                    "0".text.size(16).color(darkFontGrey).fontFamily(bold).make(),
                                    IconButton(onPressed: (){},
                                        icon: const Icon(Icons.add),
                                    ),
                                    10.widthBox,
                                    "(0 available)".text.color(textfieldGrey).make(),
                                  ],
                                ),
                              ],
                            ).box.padding(const EdgeInsets.all(8)).make(),
                            //total
                            Row(
                              children: [
                                SizedBox(
                                  width: 100,
                                  child: "Total: ".text.color(textfieldGrey).make(),
                                ),
                                "\$0.00".text.color(redColor).size(16).fontFamily(bold).make(),
                              ],
                            ).box.padding(const EdgeInsets.all(8)).make(),
                          ],

                        ).box.white.shadowSm.make(),
                        // description section
                        10.heightBox,
                        "Description".text.color(darkFontGrey).fontFamily(semibold).make(),
                        10.heightBox,
                        "This is a dummy item and dummy description here ...".text.color(darkFontGrey).make(),
                       // button section
                        10.heightBox,
                        ListView(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          children: List.generate(
                            itemDetailsButton.length, (index) =>ListTile(
                            title: itemDetailsButton[index].text.fontFamily(semibold).color(darkFontGrey).make(),
                            trailing: const Icon(Icons.arrow_forward),
                          ),),
                        ),
                        20.heightBox,
                        //product
                        productyoumayLike.text.fontFamily(bold).size(16).color(darkFontGrey).make(),
                        10.heightBox,
                        //// i copied  from home screen
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(6,
                                  (index) => Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    imgP1,
                                    width: 150,
                                    fit:BoxFit.cover,
                                  ),
                                  10.heightBox,
                                  "LapTop  4GB/64GB".text.fontFamily(semibold).color(darkFontGrey).make(),
                                  10.heightBox,
                                  r"$600".text.color(redColor).fontFamily(bold).size(16).make(),
                                ],
                              ).box.white.roundedSM.margin(const EdgeInsets.symmetric(horizontal: 4)).padding(const EdgeInsets.all(8)).make(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: customButton(
                  color: redColor,
                  title: "Add to Cart",
                  onPress: () {},
                  textColor: whiteColor,
                ),
              )
            ],
          ),
        ));
  }
}
