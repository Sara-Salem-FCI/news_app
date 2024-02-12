import 'package:flutter/material.dart';
import 'package:news/widgets/news_tile.dart';

import '../models/news_model.dart';

class NewsListView extends StatelessWidget {
  final List<NewsModel> newsList;
  const NewsListView({super.key, required this.newsList});
  @override
  Widget build(BuildContext context) {
    return SliverList(delegate: SliverChildBuilderDelegate(
        childCount: newsList.length,
            (context, index) => NewsTile(newsModel: newsList[index],)),
    );
  }
}
