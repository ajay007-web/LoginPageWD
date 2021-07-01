import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class TotalStudentList extends StatelessWidget {
  const TotalStudentList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Total Student listing"),
      ),
      body: ListWheelScrollView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text("Amit"),
              ),
              Text("Rahul"),
            ]
          )

        ],
        itemExtent: 20,
      )

    );

  }
}
