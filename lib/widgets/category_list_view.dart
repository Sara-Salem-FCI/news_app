import 'package:flutter/cupertino.dart';
import '../models/category_model.dart';
import 'category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});
final List<CategoryModel> categories = const [
  CategoryModel(imageUrl: 'assets/images/meme.jpg', categoryName: 'Business'),
];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return CategoryCard(category: categories[index]);
        },
        itemCount: categories.length,
      ),
    );
  }
}
