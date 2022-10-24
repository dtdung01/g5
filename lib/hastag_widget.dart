import 'dart:math';

import 'package:flutter/material.dart';
class HastagWidget  extends StatelessWidget {
  HastagWidget({Key? key}) : super(key: key);
  List<String> list = [
    'Tất cả',
    'Âm nhạc',
    'Trò chơi',
    'Trực tiếp',
    'Hoạt họa',
    'Danh sách kết hợp',
    'Bóng đá',
    'Nông nghiệp',
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: 70,
        child: Row(
          children: [
            ...list.map((e) {
              return Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Color(Random().nextInt(0xffffffff)),
                      borderRadius: BorderRadius.circular(30)),
                  child: Text(
                      e, 
                      style: TextStyle(fontSize: 15,color: Colors.white)
                  ));
            }).toList()
          ],
        ),
      ),
    );
  }
}
