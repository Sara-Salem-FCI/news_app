import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/models/news_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.newsModel});
final NewsModel newsModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(image: NetworkImage(newsModel.image ?? 'https://th.bing.com/th/id/OIP.hTQHlnEVJc6lMKqO49vcfAAAAA?rs=1&pid=ImgDetMain')),
        ),
         Text(
          newsModel.title,
          maxLines: 2,
          style: const TextStyle(
            overflow: TextOverflow.ellipsis,
          ),
        ),
         Text(
          newsModel.subTitle ?? '',
          maxLines: 1,
          style: const TextStyle(
            overflow: TextOverflow.ellipsis,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 10,),
      ],
    );
  }
}
