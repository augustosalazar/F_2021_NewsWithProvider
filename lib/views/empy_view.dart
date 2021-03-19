import 'package:f_202110_provider_news_reader/provider/news_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
            Provider.of<NewsProvider>(context, listen: false).showNews();
          },
          child: Text("Football news"),
        ),
      ],
    ));
  }
}
