import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Activities extends StatelessWidget {
  Activities(
      {super.key,
      required this.imagesName,
      required this.title,
      required this.like});

  final String imagesName;
  final String title;
  final int like;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey.withOpacity(0.1),
              ),
              child: Transform.scale(
                scale: 0.7,
                child: Image.asset(imagesName, fit: BoxFit.contain),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0),
            child: Text(
              title,
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 20,
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.yellow.withOpacity(0.15),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.favorite_border_outlined,
                    size: 20,
                    color: Colors.grey,
                  ),
                  Text(
                    '$like',
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFFe59a00)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
