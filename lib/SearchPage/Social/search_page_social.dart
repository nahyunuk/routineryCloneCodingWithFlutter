import 'package:flutter/material.dart';

class SearchPageSocial extends StatefulWidget {
  const SearchPageSocial({super.key});

  @override
  State<SearchPageSocial> createState() => _SearchPageSocialState();
}

class _SearchPageSocialState extends State<SearchPageSocial> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '인기',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}