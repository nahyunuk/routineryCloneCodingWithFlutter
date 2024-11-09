import 'package:flutter/material.dart';

Widget week(String _week, bool selected) {
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2.0),
        child: Container(
          width: 23,
          height: 23,
          decoration: BoxDecoration(
            color: selected ? Colors.black : null,
            borderRadius: BorderRadius.circular(11.5),
            border: selected
                ? null
                : Border.all(
                    color: Colors.black.withOpacity(0.4),
                  ),
          ),
          child: Center(
            child: Text(
              _week,
              style: TextStyle(
                  color:
                      selected ? Colors.white : Colors.black.withOpacity(0.4),
                  fontSize: 12,fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    ],
  );
}
