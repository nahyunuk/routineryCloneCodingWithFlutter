import 'package:flutter/material.dart';

Widget routinesContainer(
    {required String imageName,
    required String routineTitle,
    required bool popular,
    required bool beginner}) {
  return SizedBox(
    height: 140,
    width: 400,
    child: Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 1, color: Colors.grey),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        imageName,
                        height: 60,
                        width: 60,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        routineTitle,
                        style: const TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.keyboard_arrow_down_rounded,
                        size: 45,
                        color: Colors.grey,
                      ))
                ],
              ),
            ),
          ),
        ),
        popular
            ? Positioned(
                top: 0,
                right: 15,
                child: Container(
                  height: 25,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Center(
                      child: Text(
                    'POPULAR',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  )),
                ),
              )
            : Container(),
        beginner
            ? Positioned(
                top: 0,
                right: 15,
                child: Container(
                  height: 25,
                  width: 90,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFBF00),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Center(
                      child: Text(
                    'BEGINNER',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  )),
                ),
              )
            : Container(),
      ],
    ),
  );
}
