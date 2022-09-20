import 'package:news_app/src/data/models/source_model.dart';
import 'package:news_app/src/domain/entities/article.dart';

class ArticleModel extends Article {
  const ArticleModel({
    required super.id,
    required super.source,
    required super.title,
    required super.description,
    required super.content,
    required super.author,
    required super.url,
    required super.urlToImage,
    required super.publishedAt,
  });

  factory ArticleModel.fromMap(Map<String, dynamic> map) {
    return ArticleModel(
      id: map['id'],
      source: SourceModel.fromMap(map['source']),
      title: map['title'],
      description: map['description'],
      content: map['content'],
      author: map['author'],
      url: map['url'],
      urlToImage: map['urlToImage'],
      publishedAt: map['publishedAt'],
    );
  }
}
