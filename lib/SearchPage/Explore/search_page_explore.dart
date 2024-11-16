import 'package:flutter/material.dart';
import 'package:routinery_clone_coding_with_flutter/SearchPage/Explore/Routines/search_page_morning_routine.dart';
import 'package:routinery_clone_coding_with_flutter/SearchPage/Explore/Widget/search_page_routine_type.dart';


import 'Widget/search_page_routins.dart';

class SearchPageExplore extends StatefulWidget {
  const SearchPageExplore({super.key});

  @override
  State<SearchPageExplore> createState() => _SearchPageExploreState();
}

class _SearchPageExploreState extends State<SearchPageExplore> {
  int routineTypeIndex = 0;

  final List<Map<String, dynamic>> routineTypeMap = [
    {
      'title': '아침',
      'selected': true,
      'page': const SearchPageMorningRoutine(),
    },
    {
      'title': '저녁',
      'selected': false,
      'page': const Center(
        child: Text('저녁'),
      ),
    },
    {
      'title': '유명인',
      'selected': false,
      'page': const Center(
        child: Text('유명인'),
      ),
    },
    {
      'title': '생산성',
      'selected': false,
      'page': const Center(
        child: Text('생산성'),
      ),
    },
    {
      'title': '건강',
      'selected': false,
      'page': const Center(
        child: Text('건강'),
      ),
    },
    {
      'title': '관계',
      'selected': false,
      'page': const Center(
        child: Text('관계'),
      ),
    },
  ];

  final List<Map<String, dynamic>> activityMap = [
    {
      'imagesName': 'assets/images/brush_teeth.png',
      'title': '양치질',
      'like': 12345
    },
    {
      'imagesName': 'assets/images/brush_teeth.png',
      'title': '양치질',
      'like': 34168
    },
    {
      'imagesName': 'assets/images/brush_teeth.png',
      'title': '양치질',
      'like': 94702
    },
    {
      'imagesName': 'assets/images/brush_teeth.png',
      'title': '양치질',
      'like': 1234568
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu_rounded,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            itemCount: activityMap.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Activities(
                imagesName: activityMap[index]['imagesName'],
                title: activityMap[index]['title'],
                like: activityMap[index]['like'],
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SizedBox(
            height: 42,
            child: ListView.builder(
              itemCount: routineTypeMap.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return SearchPageRoutineType(
                  title: routineTypeMap[index]['title'],
                  selected: routineTypeMap[index]['selected'],
                  action: () {
                    setState(() {
                      routineTypeIndex = index;
                      routineTypeMap[index]['selected'] = true;
                      for (int i = 0; i < routineTypeMap.length; i++) {
                        if (i == index) {
                          continue;
                        }
                        routineTypeMap[i]['selected'] = false;
                      }
                    });
                  },
                );
              },
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height - 150, // 필요에 따라 높이를 설정
          child: routineTypeMap[routineTypeIndex]['page'],
        ),
      ],
    );
  }
}
