import 'package:coffee/constant/constant.dart';
import 'package:flutter/material.dart';


class CustomButtonIncrease extends StatelessWidget {
  const CustomButtonIncrease({Key? key, required this.icon,this.onTap}) : super(key: key);
final IconData icon ;
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
        child: Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(left: 68,right: 60,top: 20,bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: kPrimaryColor,
        border: Border.all(color: Colors.white)
      ),
      child:Padding(
        padding:const EdgeInsets.all(16),
        child: Icon(icon,color: Colors.white,size: 18),
      ),
        ),
    );
  }
}
