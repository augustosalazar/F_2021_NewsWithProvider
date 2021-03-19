import 'package:f_202110_provider_news_reader/data/data_repository.dart';
import 'package:f_202110_provider_news_reader/data/news_item.dart';
import 'package:flutter/foundation.dart';

class NewsProvider extends ChangeNotifier {
  final DataRepository repository;
  List<NewsItem> news = [];
  bool loading = false;

  NewsProvider(this.repository);

  void setLoading(value) {
    loading = value;
    print("setLoading to $value");
    notifyListeners();
  }

  Future<bool> showNews() async {
    repository.getItems("football/football").then((list) {
      news = list;
      notifyListeners();
      return Future.value(true);
    }).catchError((onError) {
      print("Error on provider showNews");
      return Future.value(false);
    });
    return Future.value(false);
  }

  Future<bool> reset() {
    news = [];
    notifyListeners();
  }
}
