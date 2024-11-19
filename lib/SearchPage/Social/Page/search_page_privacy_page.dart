import 'package:flutter/material.dart';

class SearchPagePrivacyPage extends StatefulWidget {
  const SearchPagePrivacyPage({super.key});

  @override
  State<SearchPagePrivacyPage> createState() => _SearchPagePrivacyPageState();
}

class _SearchPagePrivacyPageState extends State<SearchPagePrivacyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 45,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_rounded,
                    color: Colors.grey,
                    size: 35,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "내 정보",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Privacy",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w800,
                  fontFamily: "LeagueSpartan"),
            ),
          ],
        ),
      ),
    );
  }
}
