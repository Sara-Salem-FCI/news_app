import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news/models/news_model.dart';
import '../services/news_service.dart';
import 'news_list_view.dart';


class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.category});
final String category;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}
class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsService(Dio()).getNews(category: widget.category);
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<NewsModel>>(
      future: future ,
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (snapshot.hasData) {
          return NewsListView(newsList: snapshot.data);
        } else if(snapshot.hasError){
          return const SliverToBoxAdapter(child: Text('There is a problem'));
        } else{
          return const SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()));
        }
      },
    );
  }
}