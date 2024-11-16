import 'package:flutter/material.dart';
import 'package:routinery_clone_coding_with_flutter/SearchPage/Explore/Widget/search_page_routines_container.dart';

class SearchPageMorningRoutine extends StatefulWidget {
  const SearchPageMorningRoutine({super.key});

  @override
  State<SearchPageMorningRoutine> createState() =>
      _SearchPageMorningRoutineState();
}

class _SearchPageMorningRoutineState extends State<SearchPageMorningRoutine> {
  final List<Map<String, dynamic>> routinesMap = [
    {
      'imageName': 'assets/images/sun_icon.png',
      'routineTitle': '미라클 모닝',
      'popular': false,
      'beginner': false,
    },
    {
      'imageName': 'assets/images/wake_up_icon.png',
      'routineTitle': '모닝 루틴',
      'popular': true,
      'beginner': false,
    },
    {
      'imageName': 'assets/images/water.png',
      'routineTitle': '하루의 시작',
      'popular': false,
      'beginner': true,
    },
    {
      'imageName': 'assets/images/goal_icon.png',
      'routineTitle': '성장하는 아침',
      'popular': false,
      'beginner': false,
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 740,
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: routinesMap.length,
            itemBuilder: (context, index) {
              return routinesContainer(
                imageName: routinesMap[index]['imageName'],
                routineTitle: routinesMap[index]['routineTitle'],
                popular: routinesMap[index]['popular'],
                beginner: routinesMap[index]['beginner'],
              );
            },
          ),
        ),
      ],
    );
  }
}
