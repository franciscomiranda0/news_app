import 'dart:io';

import 'package:dio/dio.dart';
import 'package:news_app/src/core/params/article_request.dart';
import 'package:news_app/src/core/resources/data_state.dart';
import 'package:news_app/src/data/datasources/remote/news_api_service.dart';
import 'package:news_app/src/domain/entities/article.dart';
import 'package:news_app/src/domain/repositories/articles_repository_interface.dart';

class ArticlesRepository implements ArticlesRepositoryInterface {
  final NewsApiService _newsApiService;

  const ArticlesRepository(this._newsApiService);

  @override
  Future<DataState<List<Article>>> getBreakingNewsArticles(
    ArticleRequestParams params,
  ) async {
    try {
      final response = await _newsApiService.getBreakingNewsArticles(
        apiKey: params.apiKey,
        category: params.category,
        country: params.country,
        page: params.page,
        pageSize: params.pageSize,
      );

      if (response.response.statusCode == HttpStatus.ok) {
        return DataSuccess(response.data.articles);
      }
      return DataError(
        DioError(
          error: response.response.statusMessage,
          request: response.response.request,
          response: response.response,
          type: DioErrorType.RESPONSE,
        ),
      );
    } on DioError catch (e) {
      return DataError(e);
    }
  }
}
