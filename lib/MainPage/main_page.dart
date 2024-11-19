import 'package:flutter/material.dart';
import 'package:routinery_clone_coding_with_flutter/MainPage/Widget/main_page_routin.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  final List<Map<String, String>> routineMap = [
    {
      'moringOrEvening': '저녁',
      'startTime': '오후 11:00',
      'endTime': '오후 11:39',
      'dayOfWeek': '금',
    },
    {
      'moringOrEvening': '아침',
      'startTime': '오전 08:00',
      'endTime': '오전 08:29',
      'dayOfWeek': '월',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 30,
                  width: 55,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "1",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black.withOpacity(0.4),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Image.asset('assets/images/seed.png'),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 30,
                  width: 55,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "활성",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black.withOpacity(0.4),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Icon(
                          Icons.keyboard_arrow_down,
                          size: 20,
                          color: Colors.black.withOpacity(0.4),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '나현욱님, 축하해요! 첫 루틴을 만들었어요!',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: routineMap.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      createRoutin(
                          context,
                          routineMap[index]['moringOrEvening']!,
                          routineMap[index]['startTime']!,
                          routineMap[index]['endTime']!,
                          routineMap[index]['dayOfWeek']!),
                      SizedBox(height: 10),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.add_circle,
          size: 60,
          color: Colors.black,
        ),
      ),
    );
  }
}
