import 'package:coffee/models/coffee_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:coffee/constant/constant.dart';

class CoffeeItem extends StatelessWidget {
  const CoffeeItem({Key? key, required this.coffeeModel,}) : super(key: key);
final CoffeeModel coffeeModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:const EdgeInsets.only(top: 8,bottom: 8,right: 12,left: 12) ,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Column(
        children: [
          const  SizedBox(
            height: 5,
          ),

          Image.asset(
            // 'assets/images/images3.jpg',
            coffeeModel.coffeeImage,
            height: 100,
            width: 100,
          ),
          const  SizedBox(
            height: 10,
          ),

             Text(
            coffeeModel.coffeeName,
            style: const TextStyle(
                fontSize: 12, fontWeight: FontWeight.bold, color: Colors.grey),
          ),

        const  SizedBox(
            height: 15,
          ),
         Padding(
           padding:const EdgeInsets.symmetric(horizontal:6),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text(
                r'$''${coffeeModel.coffeePrice}',
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                ),
              ),
            const  SizedBox(
                width: 10,
              ),
              RatingBar.builder(
                initialRating: 0,
                minRating: 1,
                itemSize: 16,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 6,
                unratedColor: Colors.grey,
                itemBuilder: (context, index) {
                  return const Icon(
                    Icons.star,
                    size: 20,
                    color: kPrimaryColor,
                  );
                },
                onRatingUpdate: (rating) {},
              ),
            ],
          ),
         ),
        ],
      ),
    ),
    );
  }
}
// Container(
//   clipBehavior: Clip.none,
//   decoration: BoxDecoration(
//     borderRadius: BorderRadius.circular(8),
//     color: Colors.grey.shade200,
//   ),
//
//   child: Image.asset(
//     'assets/images/images3.jpg',
//     height: 100,
//     width: 100,
//   ),
// ),