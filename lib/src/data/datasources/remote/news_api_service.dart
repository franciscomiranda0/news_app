import 'package:dio/dio.dart';
import 'package:news_app/src/core/utils/constants.dart';
import 'package:news_app/src/data/models/breaking_news_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'news_api_service.g.dart';

@RestApi(baseUrl: kApiBaseUrl)
abstract class NewsApiService {
  factory NewsApiService(Dio dio, {String baseUrl}) = _NewsApiService;

  @GET('/top-headlines')
  Future<HttpResponse<BreakingNewsResponseModel>> getBreakingNewsArticles({
    @Query('apiKey') String apiKey,
    @Query('country') String country,
    @Query('category') String category,
    @Query('page') int page,
    @Query('pageSize') int pageSize,
  });
}
