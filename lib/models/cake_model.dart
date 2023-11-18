
class CakeModel {
   String cakeImage ;
   String cakeName;
   double cakePrice;

  CakeModel({required this.cakeImage, required this.cakeName, required this.cakePrice});
}



List<CakeModel> cakeModelList=[
  CakeModel(
cakeImage:'assets/images/cake.jpg',
    cakeName: 'Tort',
    cakePrice: 80.0
),
  CakeModel(
      cakeImage:'assets/images/download.jpg',
      cakeName: 'Cake Cram',
      cakePrice: 60.0
  ),
  CakeModel(
      cakeImage:'assets/images/cake.jpg',
      cakeName: 'Cake',
      cakePrice: 50.0
  ),
  CakeModel(
      cakeImage:'assets/images/images10.jpg',
      cakeName: 'Desert',
      cakePrice: 27.0
  ),
  CakeModel(
      cakeImage:'assets/images/images13.jpg',
      cakeName: 'Cub Cake',
      cakePrice: 40.0
  ),
  CakeModel(
      cakeImage:'assets/images/images14.jpg',
      cakeName: 'Cub Cake',
      cakePrice: 35.0
  ),
  CakeModel(
      cakeImage:'assets/images/images15.jpg',
      cakeName: 'Cub Cake',
      cakePrice: 25.0
  ),


];


