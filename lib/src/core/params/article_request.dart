import 'package:news_app/src/core/utils/constants.dart';

class ArticleRequestParams {
  final String apiKey;
  final String category;
  final String country;
  final int page;
  final int pageSize;

  const ArticleRequestParams({
    this.apiKey = kApiKey,
    this.category = 'general',
    this.country = 'us',
    this.page = 1,
    this.pageSize = 20,
  });
}
