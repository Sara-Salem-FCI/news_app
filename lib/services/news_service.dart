import 'package:dio/dio.dart';
import 'package:news/models/news_model.dart';

class NewsService{
  final Dio dio;
  NewsService(this.dio);
 Future<List<NewsModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=e1a00d07c8aa4328affc11faa3c772b6&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<NewsModel> news = [];
      for (var article in articles){
            NewsModel newsModel = NewsModel.fromJson(article);
            news.add(newsModel);
          }
      return news;
    } catch (e) {
      return [];
    }
  }
}