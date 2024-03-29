import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const SizedBox(
            height: 2,
            child: VerticalDivider(
              color: Color(0xff0b1a513b),
              thickness: 160,
            )),
        const SizedBox(
          width: 160,
        ),
        Container(
            padding: const EdgeInsets.only(right: 15),
            child: const Text(
              'OR',
              style: TextStyle(
                color: Color(0xFF0B1A51),
                fontSize: 11,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            )),
        const SizedBox(
            height: 2,
            child: VerticalDivider(
              color: Color(0xff0b1a513b),
              thickness: 160,
            ))
      ],
    );
  }
}
