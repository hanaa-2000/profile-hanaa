import 'package:coffee/wedigts/custom_button.dart';
import 'package:flutter/material.dart';



class ButtonAction extends StatefulWidget {
  final Function buildIndex;
    const ButtonAction({Key? key, required this.buildIndex}) : super(key: key);
//final Widget list ;
  @override
  State<ButtonAction> createState() => _ButtonActionState();
}

class _ButtonActionState extends State<ButtonAction> {
 int selectedIndex=-1;
  List<Model> model=[
    Model(name: 'Coffee', image: 'assets/images/images.jpg'),
    Model(name: 'Cake', image: 'assets/images/cake.jpg'),
    Model(name: 'Snack', image: 'assets/images/snack.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
              itemBuilder: (context,index){
                return Padding(
                    padding:const EdgeInsets.only(left: 12,right: 4)  ,
                child:  CustomButton(
                    model: model[index],
                  onTap: (){
                      setState(() {
                     selectedIndex=index;
                     widget.buildIndex(selectedIndex);
                      });
                  },
                  isClicked:selectedIndex==index ?true:false,
                )
                ) ;
              },
              itemCount: model.length,
            scrollDirection: Axis.horizontal,


    );
  }

  // void buildIndex(int index) {
  // setState(() {
  //   index=selectedIndex;
  // });
  // }
}

class Model{
  String image;
  String name;
  Model({required this.name,required this.image});
}