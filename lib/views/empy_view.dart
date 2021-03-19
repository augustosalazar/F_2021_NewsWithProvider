import 'package:flutter/material.dart';

class EmptyNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
          onPressed: () {
            print("getting news");
          },
          child: Text("Football news"),
        ),
      ],
    ));
  }
}
