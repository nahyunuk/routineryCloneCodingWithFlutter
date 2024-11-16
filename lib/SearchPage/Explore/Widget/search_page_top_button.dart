import 'package:flutter/material.dart';

class SearchPageTopButton extends StatelessWidget {
  const SearchPageTopButton(
      {super.key, required this.buttonAction, required this.text,required this.selected});

  final VoidCallback buttonAction;
  final String text;
  final bool selected;

  @override
  Widget build(BuildContext context, ) {
    return GestureDetector(
      onTap: buttonAction,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.grey.withOpacity(0.1),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              text,
              style: TextStyle(
                  fontFamily: 'LeagueSpartan',
                  fontSize: 24,
                  color:
                      selected ? Colors.black : Colors.black.withOpacity(0.3)),
            ),
          ),
        ),
      ),
    );
  }
}
