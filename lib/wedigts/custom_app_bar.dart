import 'package:flutter/material.dart';

class AppBarBody extends StatelessWidget {
  const AppBarBody({Key? key, required this.color, }) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24),
      color: color,
      child:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Hanaa nassef',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            CircleAvatar(
              maxRadius: 25.0,
              minRadius: 20.0,
              backgroundImage: AssetImage(
                'assets/images/name.jpg',
              ),
            ),
          ],
    ),

    );
  }
}
