import 'package:flutter/material.dart';
import 'package:g5/model/class_model.dart';

class HomePageClass extends StatelessWidget {
  HomePageClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff03dac6),
        foregroundColor: Colors.black,
        mini: true,
        onPressed: () {
          // Respond to button press
        },
        child: Icon(Icons.add),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...ls.map((e) {
              return Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(e.hinhNen ?? ""),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20)),
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          e.tenLopHP ?? "",
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        //
                        PopupMenuButton<String>(
                          icon: Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                            size: 30,
                          ),
                          onSelected: showMenuSelection,
                          itemBuilder: (BuildContext context) =>
                              <PopupMenuEntry<String>>[
                            const PopupMenuItem<String>(
                                value: 'Create another',
                                child: ListTile(
                                    leading: Icon(Icons.add),
                                    title: Text('Create another'))),
                            const PopupMenuItem<String>(
                                value: 'Edit ',
                                child: ListTile(
                                    leading: Icon(Icons.edit),
                                    title: Text('Edit'))),
                            const PopupMenuItem<String>(
                                value: 'Delete',
                                child: ListTile(
                                    leading: Icon(Icons.delete),
                                    title: Text('Delete')))
                          ],
                        ),
                      ],
                    ),
                    Text(
                      e.maLopHP ?? "",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 65),
                      child: Text(
                        "${e.soLuongSV ?? 0} học viên",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              );
            }).toList()
          ],
        ),
      ),
    );
  }
}

void showMenuSelection(String value) {
  print("pressed");
}
