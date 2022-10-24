import 'package:flutter/material.dart';

class SliderWidget extends StatelessWidget {
  SliderWidget({Key? key}) : super(key: key);
  List<String> list = [
    'assets/images/saigon.jpg',
    'assets/images/saigon.jpg',
    'assets/images/saigon.jpg',
    'assets/images/saigon.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: 250,
        child: Row(
          // for(int i = 0; i < list.length; i++)
          children: [
            //   Image.asset(list[i]),
            ...list.map((e) { //TODO:...

              return Container(
                margin: EdgeInsets.only(right: 10, left: 10),
                width: MediaQuery.of(context).size.width *.8,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(e),
                        fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.circular(10)
                ),
              );
            }).toList()
          ],
        ),
      ),
    );
  }
}