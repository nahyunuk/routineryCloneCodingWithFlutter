import 'package:flutter/material.dart';
import 'package:routinery_clone_coding_with_flutter/MainPage/Widget/main_page_week.dart';

Widget createRoutin(
  BuildContext context,
  String morningAndEvening,
  String startTime,
  String endTime,
  String dayOfWeek,
) {
  Map<String,bool> selectedWeek = {
    'mon' : false,
    'tue' : false,
    'wed' : false,
    'thu' : false,
    'fri' : false,
  };
  switch(dayOfWeek){
    case '월' : selectedWeek['mon'] = true; break;
    case '화' : selectedWeek['tue'] = true; break;
    case '수' : selectedWeek['wed'] = true; break;
    case '목' : selectedWeek['thu'] = true; break;
    case '금' : selectedWeek['fri'] = true; break;
  }



  return Container(
    width: MediaQuery.of(context).size.width,
    height: 180,
    decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.circular(20)),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.check,
            color: Colors.red,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '$morningAndEvening 루틴',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              Icon(
                Icons.more_horiz,
                color: Colors.black.withOpacity(0.3),
                size: 30,
              ),
            ],
          ),
          Row(
            children: [
              Text(
                '$startTime ~ $endTime',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.3),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.notifications_none_outlined,
                size: 20,
                color: Colors.black.withOpacity(0.3),
              )
            ],
          ),
          SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              week('월', selectedWeek['mon']!),
              week('화', selectedWeek['tue']!),
              week('수', selectedWeek['wed']!),
              week('목', selectedWeek['thu']!),
              week('금', selectedWeek['fri']!),
            ],
          ),
        ],
      ),
    ),
  );
}
