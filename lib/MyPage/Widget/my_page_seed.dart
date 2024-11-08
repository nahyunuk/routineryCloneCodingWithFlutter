import 'package:flutter/material.dart';

Widget seedBox() {
  return Center(
    child: Column(
      children: [
        Image.network(
          'https://i.pinimg.com/564x/b0/86/d8/b086d85a29bdf60d96cff49154fe78f8.jpg',
          height: 100,
          width: 100,
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              '씨앗',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.help_outline_outlined,
                size: 30,
                color: Colors.grey.withOpacity(0.7),
              ),
            ),
          ],
        ),
        const Text(
          "연속 1일",
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        )
      ],
    ),
  );
}
