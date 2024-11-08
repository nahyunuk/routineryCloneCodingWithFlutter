import 'package:flutter/material.dart';
import 'package:routinery_clone_coding_with_flutter/MyPage/Widget/my_page_settingmenu.dart';
import 'package:routinery_clone_coding_with_flutter/MyPage/Widget/my_page_headline.dart';
import 'package:routinery_clone_coding_with_flutter/MyPage/Widget/my_page_seed.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  createHeadline('Profile'),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        elevation: 0, // 그림자 제거
                        backgroundColor: Colors.grey.withOpacity(0.05)),
                    child: Icon(
                      Icons.local_activity_outlined,
                      color: Colors.grey.withOpacity(0.8),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60,
            ),
            seedBox(),
            createSettingMenu('개인정보', Icons.arrow_forward_ios_sharp,),
            createSettingMenu('구독 관리',Icons.arrow_forward_ios_sharp),
            createSettingMenu('계정 관리',Icons.arrow_forward_ios_sharp),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: createHeadline('Settings'),
            ),
            createSettingMenu('타이머 설정',Icons.arrow_forward_ios_sharp),
            createSettingMenu('시스템 설정',Icons.arrow_forward_ios_sharp),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: createHeadline('Help'),
            ),
            createSettingMenu('자주 묻는 질문',Icons.arrow_forward_ios_sharp),
            createSettingMenu('루틴 잘하는 팁',Icons.arrow_forward_ios_sharp),
            createSettingMenu('단죽어 활용 팁',Icons.arrow_forward_ios_sharp),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: createHeadline('Membership'),
            ),
            createSettingMenu('선물권 구매 및 관리',Icons.arrow_forward_ios_sharp),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: createHeadline('Notice'),
            ),
            createSettingMenu('공지 사항',Icons.arrow_forward_ios_sharp),
            createSettingMenu('업데이트 노트',Icons.north_east),
            createSettingMenu('루티너리 이야기',Icons.north_east),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
