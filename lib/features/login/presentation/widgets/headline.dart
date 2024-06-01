import 'package:flutter/material.dart';

class Headline extends StatelessWidget {
  const Headline({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 55, bottom: 25),
          child: Image.asset(
            'assets/images/quran.png',
            width: 350,
          ),
        ),
        const Text(
          'Kajian Sunnah',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const Text(
          'Kini Mudah.',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
