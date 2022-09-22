import 'package:news_app/src/data/models/source_model.dart';
import 'package:news_app/src/domain/entities/article.dart';
import 'package:news_app/src/domain/entities/source.dart';

class ArticleModel extends Article {
  const ArticleModel({
    required int id,
    required Source source,
    required String title,
    required String description,
    required String content,
    required String author,
    required String url,
    required String urlToImage,
    required String publishedAt,
  }) : super(
          id: id,
          author: author,
          content: content,
          description: description,
          publishedAt: publishedAt,
          source: source,
          title: title,
          url: url,
          urlToImage: urlToImage,
        );

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
