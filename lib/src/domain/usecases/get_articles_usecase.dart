import 'package:news_app/src/core/params/article_request.dart';
import 'package:news_app/src/core/resources/data_state.dart';
import 'package:news_app/src/core/usecases/usecase.dart';
import 'package:news_app/src/domain/entities/article.dart';
import 'package:news_app/src/domain/repositories/articles_repository.dart';

class GetArticlesUseCase
    implements UseCase<DataState<List<Article>>, ArticleRequestParams> {
  final ArticlesRepository _articlesRepository;

  const GetArticlesUseCase(this._articlesRepository);

  @override
  Future<DataState<List<Article>>> call({
    required ArticleRequestParams params,
  }) =>
      _articlesRepository.getBreakingNewsArticles(params);
}
