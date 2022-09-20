import 'package:news_app/src/data/models/article_model.dart';
import 'package:news_app/src/domain/entities/article.dart';

class BreakingNewsResponseModel {
  final String status;
  final int totalResults;
  final List<Article> articles;

  const BreakingNewsResponseModel({
    required this.status,
    required this.totalResults,
    required this.articles,
  });

  factory BreakingNewsResponseModel.fromMap(Map<String, dynamic> map) {
    return BreakingNewsResponseModel(
      status: map['status'],
      totalResults: map['totalResults'],
      articles: List.from(map['articles'])
          .map((articleMap) => ArticleModel.fromMap(articleMap))
          .toList(),
    );
  }
}
