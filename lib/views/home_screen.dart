import 'package:flutter/material.dart';
import 'package:news/widgets/category_list_view.dart';
import '../widgets/news_list_view_builder.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'News',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Text(
                'Cloud',
              style: TextStyle(
                color: Colors.deepOrange,
              ),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(18),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CategoryListView()),
            SliverToBoxAdapter(child: SizedBox(height: 20,)),
            NewsListViewBuilder(category: 'general',),
          ],
        ),
      ),
    );
  }
}

