import 'package:flutter/material.dart';
import 'package:routinery_clone_coding_with_flutter/SearchPage/Social/Page/search_page_privacy_page.dart';
import 'package:routinery_clone_coding_with_flutter/SearchPage/Social/Widget/search_page_profile.dart';
import 'package:routinery_clone_coding_with_flutter/SearchPage/Social/Widget/search_page_social_button.dart';

class SearchPageSocial extends StatefulWidget {
  const SearchPageSocial({super.key});

  @override
  State<SearchPageSocial> createState() => _SearchPageSocialState();
}

final List<Map<String, dynamic>> profileMap = [
  {
    'profileImageNameUrl':
        'https://image.utoimage.com/preview/cp872722/2022/12/202212008462_500.jpg',
    'userName': '나현욱'
  },
  {'profileImageNameUrl': null, 'userName': ''},
  {
    'profileImageNameUrl':
        'https://cdn.discordapp.com/attachments/1232250064231993375/1306123892431130655/20241113_140950.jpg?ex=6738d1ea&is=6737806a&hm=02cdc40d1642bd2de7af91fa49d18c25543034efdc904f91d78774f8eadcebf9&.png',
    'userName': '김민준'
  },
  {'profileImageNameUrl': null, 'userName': ''},
];

class _SearchPageSocialState extends State<SearchPageSocial> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '인기',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: profileMap.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SearchPageProfile(
                    profileImageNameUrl: profileMap[index]
                        ['profileImageNameUrl'],
                    userName: profileMap[index]['userName'],
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SearchPageSocialButton(() {}, Icons.menu, '필터'),
              SearchPageSocialButton(() {
                // Privacy 페이지로 이동
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SearchPagePrivacyPage(),
                  ),
                );
              }, Icons.lock_open_outlined, '공개 설정'),
            ],
          ),
        ],
      ),
    );
  }
}
