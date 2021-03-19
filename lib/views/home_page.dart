import 'package:f_202110_provider_news_reader/views/empy_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);
  static final String route = "homepage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 22, right: 2, left: 2),
        child: Column(
          children: [
            Image(image: AssetImage("assets/images/logo.png")),
            Container(
              height: 420,
              child: EmptyNews(),
            ),
          ],
        ),
      ),
    );
  }
}
