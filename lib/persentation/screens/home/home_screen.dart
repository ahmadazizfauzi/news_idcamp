import 'package:flutter/material.dart';
import 'package:news/widgets/non_reusable/home/news_article_home_widget.dart';
import 'package:news/widgets/non_reusable/home/top_section_home_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(height: 40,),
                TopSectionHomeWidget(),
                SizedBox(height: 40,),
                NewsArticle(),
                SizedBox(height: 40,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
