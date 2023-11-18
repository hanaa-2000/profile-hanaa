import 'package:coffee/constant/constant.dart';
import 'package:flutter/material.dart';


class CustomButtonSize extends StatelessWidget {
  const CustomButtonSize({Key? key, required this.text, this.onTap, this.isClicked=false}) : super(key: key);
final String text;
final bool isClicked;
 final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:const EdgeInsets.only(left: 60,right: 20,top: 20,bottom: 12),
    child: InkWell(
      onTap: onTap,
    child: isClicked ? Container(
      width: 50,
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.yellow,
        border:Border.all(color: Colors.yellow)
      ),
      child:  Padding(
    padding:const EdgeInsets.all(8),
    child: Text(
        text,
        style: const TextStyle(
          fontSize: 20,
          color:kPrimaryColor,
        ),
      ),
      ),
    ) : Container(
      width: 50,
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: kPrimaryColor,
          border:Border.all(color: Colors.white)
      ),
      child:  Padding(
        padding:const EdgeInsets.all(8),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            color:Colors.white,
          ),
        ),
      ),
    ),
    ),
    );
  }
}
