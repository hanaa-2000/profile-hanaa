import 'package:flutter/material.dart';


class TextPromo extends StatelessWidget {
  const TextPromo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children:const [
        SizedBox(
          width: 15,
          height:50,
        ),
        Text(
          'Promo for you',
          style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w900

          ),
        ),
      ],
    );
  }
}

class TextAfterPromo extends StatelessWidget {
  const TextAfterPromo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 15,
          height:10,
        ),
        Text(
          'Recommendation',
          style: TextStyle(
              fontSize: 14.0,
              color: Colors.grey.shade400,
              fontWeight: FontWeight.w900

          ),
        ),
      ],
    );
  }
}

