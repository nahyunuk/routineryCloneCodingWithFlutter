import 'package:flutter/material.dart';

class SearchPageRoutineType extends StatelessWidget {
   SearchPageRoutineType(
      {super.key, required this.title, required this.selected,required this.action});

  final String title;
  final bool selected;
  final VoidCallback action;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
      child: GestureDetector(
        onTap: action,
        child: Container(
          decoration: BoxDecoration(
            color: selected ? Colors.black.withOpacity(0.8) : Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: Text(title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900,color: selected ? Colors.white : Colors.grey),),
            ),
          ),
        ),
      ),
    );
  }
}
