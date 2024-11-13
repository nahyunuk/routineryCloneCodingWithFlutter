import 'package:flutter/material.dart';

class SearchPageTopButton extends StatefulWidget {
  const SearchPageTopButton(
      {super.key, required this.buttonAction, required this.text,required this.selected});

  final VoidCallback buttonAction;
  final String text;
  final bool selected;

  @override
  State<SearchPageTopButton> createState() => _SearchPageTopButtonState();
}

class _SearchPageTopButtonState extends State<SearchPageTopButton> {
  @override
  Widget build(BuildContext context, ) {
    return GestureDetector(
      onTap: widget.buttonAction,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.grey.withOpacity(0.1),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              widget.text,
              style: TextStyle(
                  fontFamily: 'LeagueSpartan',
                  fontSize: 24,
                  color:
                      widget.selected ? Colors.black : Colors.black.withOpacity(0.3)),
            ),
          ),
        ),
      ),
    );
  }
}
