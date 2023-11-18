import 'package:coffee/constant/constant.dart';
import 'package:coffee/models/coffee_model.dart';
import 'package:coffee/wedigts/custom_app_bar.dart';
import 'package:coffee/wedigts/custom_button_inc.dart';
import 'package:coffee/wedigts/custom_button_size.dart';
import 'package:flutter/material.dart';


class ItemView extends StatefulWidget{

 final CoffeeModel coffeeModel;
  const ItemView({Key? key, required this.coffeeModel, }) : super(key: key);

  @override
  _ItemView createState()=> _ItemView();
}
class _ItemView extends State<ItemView> {



int selected=-1;
  int point=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Column(
        children: [

          const AppBarBody(color: kPrimaryColor),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                alignment: Alignment.centerLeft,
                onPressed: () {
                  Navigator.pop(context);

                },
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.white,
                  size: 18,
                )),
              const SizedBox(width: 80.0,),
              const Text(
                'Item Details',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 90.0,),
            ],
          ),

          Column(
            children: [
              const SizedBox(
                height: 70.0,
              ),
              Text(
            widget.coffeeModel.coffeeName,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 22.0,
                  color: Colors.white,
                  fontFamily: AutofillHints.creditCardExpirationMonth,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                r'$ ''${widget.coffeeModel.coffeePrice}',
                style:const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24.0,
                  color: Colors.yellow,
                ),
              ),
            ],
          ),
          Row(
            children:[
              Column(
             children:[
               CustomButtonSize(
                   onTap: (){
                     setState(() {
                       selected=1;
                     });
                     },
                   isClicked: selected==1 ?true:false,
                   text: 'S'),
              CustomButtonSize(
                  onTap: (){
                    setState(() {
                      selected=2;
                    });
                  },
                  isClicked: selected==2 ?true:false
                  ,text: 'M'),
              CustomButtonSize(onTap: (){
                setState(() {
                  selected=3;
                });
              },
                  isClicked: selected==3 ?true:false,
                  text: 'L'),
            ],
              ),
              const SizedBox(
                height: 50.0,
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(24),
                padding: const EdgeInsets.all(24),

                child: Image.asset(widget.coffeeModel.coffeeImage,width: 150,height: 180,),
              ),
            ],
          ),

          Row(
            children: [
              CustomButtonIncrease(onTap: (){
                setState(() {
                  if(point>0){
                    point--;
                  }

                });
              },icon: Icons.minimize_outlined),
              Text(
                '$point',
                style:const TextStyle(
                  color: Colors.white,
                  fontSize: 24.0
                ),
              ),
              CustomButtonIncrease(
                  onTap: (){
                    setState(() {
                      point++;
                    });
                  },
                  icon: Icons.add),
            ],
          ),

         Container(
           margin: const EdgeInsets.only(left: 16,right: 24,top: 16,bottom: 16),
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(32),
             color: Colors.white
           ),
           child: InkWell(
            onTap: (){
              showDialog(context: context, builder: (context){
                return AlertDialog(
                  alignment: Alignment.center,
                  title: const Center(
                    child: Text(
                      'Successfully',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 24.0,

                      ),

                    ),
                  ),
                  backgroundColor: Colors.white,
                  content:const Text('The withdrawal process from the card was completed successfully',
                    style:TextStyle(
                      color:Color(0xff013838),
                      fontSize: 16.0,
                    ),

                  ),
                  actions: [
                    Center(child: InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child:
                      const Padding(padding: EdgeInsets.all(16),
                        child:Text(
                          'Okey',
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 24.0,

                          ),

                        ),
                      ),
                    ),)
                    ,
                  ],
                );
              });
            },
            child:const Padding(
              padding: EdgeInsets.only(top: 16,left: 38 ,bottom: 16,right: 38),
              child: Text(
                'Add to Cart',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: kPrimaryColor,
                  fontSize: 22.0,
                ),
              ),
            ),
          ),
         ),
        ],
      ),
    );
  }
}
