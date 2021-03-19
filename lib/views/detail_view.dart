import 'package:f_202110_provider_news_reader/data/news_item.dart';
import 'package:flutter/material.dart';

class NewsDetailArgs {
  final NewsItem news;
  NewsDetailArgs(this.news);
}

class NewsDetail extends StatefulWidget {
  const NewsDetail({Key key}) : super(key: key);

  @override
  _NewsDetailState createState() => _NewsDetailState();

  static final String route = "homepage_detail";
}

class _NewsDetailState extends State<NewsDetail> {
  NewsDetailArgs _args;

  @override
  Widget build(BuildContext context) {
    _args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
        body: Center(
      child: Text(_args.news.webTitle),
    ));
  }
}
