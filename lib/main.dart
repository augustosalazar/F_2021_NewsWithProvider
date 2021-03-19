import 'package:f_202110_provider_news_reader/data/data_repository.dart';
import 'package:f_202110_provider_news_reader/provider/news_provider.dart';
import 'package:f_202110_provider_news_reader/views/detail_view.dart';
import 'package:f_202110_provider_news_reader/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  final DataRepository repository = DataRepository();
  runApp(MyApp(repository: repository));
}

class MyApp extends StatelessWidget {
  const MyApp({this.repository});
  final DataRepository repository;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider<NewsProvider>(
        create: (context) => NewsProvider(repository),
        child: HomePage(),
      ),
      routes: {
        HomePage.route: (context) => HomePage(),
        NewsDetail.route: (context) => NewsDetail(),
      },
    );
  }
}
