import 'package:flutter/material.dart';

import 'package:routinery_clone_coding_with_flutter/SearchPage/Explore/search_page_explore.dart';
import 'package:routinery_clone_coding_with_flutter/SearchPage/Social/search_page_social.dart';


import 'Explore/Widget/search_page_top_button.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool exploreSelected = true;
  bool socialSelected = false;
  bool exploreOrSocial = true;

  void exploreToggle() {
    setState(() {
      exploreSelected = true;
      socialSelected = false;
      exploreOrSocial = true;
    });
  }

  void socialToggle() {
    setState(() {
      exploreSelected = false;
      socialSelected = true;
      exploreOrSocial = false;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SearchPageTopButton(
                    buttonAction: exploreToggle, // explore 버튼의 toggle 함수
                    text: 'Explore',
                    selected: exploreSelected,
                  ),
                  const SizedBox(width: 10),
                  SearchPageTopButton(
                    buttonAction: socialToggle, // social 버튼의 toggle 함수
                    text: 'Social',
                    selected: socialSelected,
                  ),
                ],
              ),
            ),
            exploreOrSocial ?const SearchPageExplore() : const SearchPageSocial(),
          ],
        ),
      ),
    );
  }
}
