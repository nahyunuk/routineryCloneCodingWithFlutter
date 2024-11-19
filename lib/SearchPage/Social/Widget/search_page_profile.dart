import 'package:flutter/material.dart';

class SearchPageProfile extends StatelessWidget {
  const SearchPageProfile(
      {super.key, required this.profileImageNameUrl, required this.userName});

  final String? profileImageNameUrl;
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 100,
          width: 100,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    image: profileImageNameUrl == null || profileImageNameUrl!.isEmpty
                        ? const DecorationImage(
                      image: AssetImage('assets/images/profile_icon.png'),
                      fit: BoxFit.cover,
                    )
                        : DecorationImage(
                      image: NetworkImage(profileImageNameUrl!),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                right: 5,
                child: Container(
                  height: 28,
                  width: 28,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Image.asset('assets/images/sprout_icon.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
        Text(
          userName,
          style: TextStyle(fontSize: 17),
        )
      ],
    );
  }
}
