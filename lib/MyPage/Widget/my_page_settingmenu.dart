import 'package:flutter/material.dart';

Widget createSettingMenu(String title, IconData icons) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8,),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                icons,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Divider(
          height: 0,
          thickness: 1.5,
          color: Colors.grey.withOpacity(0.3),
        ),
      ),
    ],
  );
}
