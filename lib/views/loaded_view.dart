import 'package:f_202110_provider_news_reader/provider/news_provider.dart';
import 'package:f_202110_provider_news_reader/views/list_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoadedNews extends StatelessWidget {
  const LoadedNews({Key key}) : super(key: key);

  Future _refreshList(BuildContext context) async {
    await Provider.of<NewsProvider>(context, listen: false).showNews();
  }

  @override
  Widget build(BuildContext context) {
    List<ListItem> items = [];

    for (var news in Provider.of<NewsProvider>(context, listen: false).news) {
      items.add(ListItem(news));
    }

    return GestureDetector(
      onHorizontalDragEnd: (details) {
        Provider.of<NewsProvider>(context, listen: false).reset();
      },
      child: RefreshIndicator(
          child: ListView(
            children: items,
          ),
          onRefresh: () => _refreshList(context)),
    );
  }
}
