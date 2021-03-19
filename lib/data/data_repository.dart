import 'package:f_202110_provider_news_reader/data/guardian_client.dart';

import 'news_item.dart';

class DataRepository {
  TheGuardianClient client;
  static const apikey = "ead4c24f-a4ae-4d1a-85e6-7149b638c779";

  DataRepository() {
    client = TheGuardianClient(apikey);
  }

  Future<List<NewsItem>> getItems(String topic) async {
    return await client.getItems(topic);
  }
}
