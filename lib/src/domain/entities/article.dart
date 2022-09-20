import 'package:equatable/equatable.dart';
import 'package:news_app/src/domain/entities/source.dart';

class Article extends Equatable {
  final int id;
  final Source source;
  final String title;
  final String description;
  final String content;
  final String author;
  final String url;
  final String urlToImage;
  final String publishedAt;

  const Article({
    required this.id,
    required this.source,
    required this.title,
    required this.description,
    required this.content,
    required this.author,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
  });

  @override
  List<Object> get props => [
        id,
        source,
        title,
        description,
        content,
        author,
        url,
        urlToImage,
        publishedAt,
      ];

  @override
  bool get stringify => true;
}
