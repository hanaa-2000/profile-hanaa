import 'package:coffee/constant/constant.dart';
import 'package:coffee/wedigts/button_action.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      this.onTap,
      this.isClicked=false, required this.model,})
      : super(key: key);
  final bool isClicked;
  final void Function()? onTap;
  final Model model;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: onTap,
      child: isClicked
          ? Container(
              padding:
                  const EdgeInsets.only(top: 8, right: 16, left: 16, bottom: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: kPrimaryColor,
                ),
                color: kPrimaryColor,
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 20,
                    child: Image.asset(
                     model.image,
                      height: 30,
                      width: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                   model.name,
                    style: const TextStyle(
                        fontSize: 12.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          : Container(
              padding:
                  const EdgeInsets.only(top: 8, right: 16, left: 16, bottom: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Colors.grey,
                ),
                color: Colors.grey.shade200,
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 20,
                    child: Image.asset(
                     model.image,
                      height: 30,
                      width: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    model.name,
                    style: const TextStyle(
                        fontSize: 12.0,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
    );
  }
}
