import 'package:flutter/material.dart';
import 'package:news/views/category_screen.dart';
import '../models/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});
 final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return CategoryScreen(category: category.categoryName,);
            }),);
      },
      child: Container(
        margin: const EdgeInsets.only(right: 10,),
        height: 80,
        width: 150,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            repeat: ImageRepeat.noRepeat,
            image: AssetImage(category.imageUrl),
          ),
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(child: Text(
          category.categoryName,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
    );
  }
}
