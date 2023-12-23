import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/lists.dart';
import 'package:flutter/material.dart';

import '../../widgets/home_buttons_widget.dart';
import 'components/features_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: context.screenWidth,
      height: context.screenHeight,
      color: lightGrey,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              height: 60,
              alignment: Alignment.center,
              color: lightGrey,
              child: TextFormField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: whiteColor,
                  hintText: searchAnyThing,
                  hintStyle: TextStyle(color: textfieldGrey),
                ),
              ),
            ),
            10.heightBox ,
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  //swiper brand
                  VxSwiper.builder(
                    aspectRatio: 16 / 9,
                    autoPlay: true,
                    height: 150,
                    enlargeCenterPage: true,
                    itemCount: brandsSlider.length,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        brandsSlider[index],
                        fit: BoxFit.fill,
                      )
                          .box
                          .rounded
                          .clip(Clip.antiAlias)
                          .margin(const EdgeInsets.symmetric(horizontal: 8))
                          .make();
                    },
                  ),
                  10.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      2,
                          (index) => homeButtons(
                        width: context.screenWidth / 2.5,
                        height: context.screenHeight * 0.15,
                        icon: index == 0 ? icTodaysDeal : icFlashDeal,
                        title: index == 0 ? todayDeal : flashSale,
                      ),
                    ),
                  ),
                  10.heightBox,
                  //swiper2  brand
                  VxSwiper.builder(
                    aspectRatio: 16 / 9,
                    autoPlay: true,
                    height: 150,
                    enlargeCenterPage: true,
                    itemCount: secondSlider.length,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        secondSlider[index],
                        fit: BoxFit.fill,
                      )
                          .box
                          .rounded
                          .clip(Clip.antiAlias)
                          .margin(const EdgeInsets.symmetric(horizontal: 8))
                          .make();
                    },
                  ),
                  10.heightBox,

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      3, (index)=>homeButtons(
                      width: context.screenWidth / 3.5,
                      height: context.screenHeight * 0.12,
                      icon: index == 0 ? icTopCategories : index == 1 ?icBrands : icTopSeller,
                      title: index == 0 ? topCategories : index == 1 ? brand : topSellers,
                    ),
                    ),
                  ),
                  //features category
                  20.heightBox,
                  Align(
                      alignment: Alignment.centerLeft,
                      child: featureCategories.text.color(darkFontGrey).size(18).fontFamily(semibold).make()),
                  20.heightBox,

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                      3
                      , (index) =>Column(
                        children: [
                          featuresButtons(title: featureTitles1[index],icon: featureImages1[index]),
                          10.heightBox,
                          featuresButtons(title: featureTitles2[index],icon: featureImages2[index]),
                        ],
                      )
                      ).toList(),
                    ),
                  ),
                  // features product
                  20.heightBox,
                  Container(
                    padding: const EdgeInsets.all(12),
                    width: double.infinity,
                    decoration:  const BoxDecoration(
                      color: redColor,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        featureProduct.text.white.fontFamily(bold).size(18).make(),
                        10.heightBox,
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

                  //// swiper
                  20.heightBox,
                  //swiper3  brand
                  VxSwiper.builder(
                    aspectRatio: 16 / 9,
                    autoPlay: true,
                    height: 130,
                    enlargeCenterPage: true,
                    itemCount: secondSlider.length,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        secondSlider[index],
                        fit: BoxFit.fill,
                      )
                          .box
                          .rounded
                          .clip(Clip.antiAlias)
                          .margin(const EdgeInsets.symmetric(horizontal: 8))
                          .make();
                    },
                  ),
                  20.heightBox,
                  //// all products

                  GridView.builder(
                    shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 6,
                      gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                        mainAxisExtent: 300,
                      ),
                      itemBuilder: (context,index){
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              imgP5,
                              height: 200,
                              width: 200,
                              fit:BoxFit.cover,
                            ),
                            const Spacer(),
                            "LapTop  4GB/64GB".text.fontFamily(semibold).color(darkFontGrey).make(),
                            10.heightBox,
                            r"$600".text.color(redColor).fontFamily(bold).size(16).make(),
                            10.heightBox,
                          ],
                        ).box.white.roundedSM.margin(const EdgeInsets.symmetric(horizontal: 4)).padding(const EdgeInsets.all(12)).make();
                      },
                  ),
                ],
              ),
            ),
          ) ,
          ],
        ),
      ),
    );
  }
}
