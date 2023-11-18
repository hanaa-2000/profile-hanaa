
class CoffeeModel {
   String coffeeImage ;
   String coffeeName;
   double coffeePrice;

  CoffeeModel({required this.coffeeImage, required this.coffeeName, required this.coffeePrice});
}



List<CoffeeModel> coffeeModelList=[
CoffeeModel(
coffeeImage:'assets/images/images2.jpg',
    coffeePrice:15.0,
  coffeeName:'Americano Coffee'
),
  CoffeeModel(
      coffeeImage:'assets/images/images4.jpg',
      coffeePrice: 12.0,
      coffeeName:'Espresso'
  ),
  CoffeeModel(
      coffeeImage:'assets/images/images3.jpg',
      coffeePrice:13.0,
      coffeeName:'Cappuccino',
  ),
  CoffeeModel(
      coffeeImage:'assets/images/images5.jpg',
      coffeePrice:18.0,
      coffeeName:'Vietnamese Iced Coffee',
  ),
  CoffeeModel(
      coffeeImage:'assets/images/images6.jpg',
      coffeePrice:25.0,
      coffeeName: 'Iced Latte',
  ),
  CoffeeModel(
      coffeeImage:'assets/images/images1.jpg',
      coffeePrice:32.0,
      coffeeName:'Latte',
  ),
  CoffeeModel(
      coffeeImage: 'assets/images/images8.jpg',
      coffeePrice: 40.0,
      coffeeName:'Vanilla Latte',
  ),
  CoffeeModel(
      coffeeImage: 'assets/images/images7.jpg',
      coffeePrice:33.0,
      coffeeName:'Iced Latte',
  ),
  CoffeeModel(
      coffeeImage: 'assets/images/images9.jpg',
      coffeePrice:20.0,
      coffeeName:'Latte',
  ),

];


