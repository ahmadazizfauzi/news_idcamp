import 'package:flutter/material.dart';
import 'package:news/data/data_news.dart';
import 'package:news/widgets/non_reusable/detail_news/banner_image_detail_widget.dart';
import 'package:news/widgets/non_reusable/detail_news/heading_detail_widget.dart';
import 'package:news/widgets/non_reusable/detail_news/content_news_detail_widget.dart';

class DetailNewsScreen extends StatelessWidget {
  final int newsId;

  const DetailNewsScreen({super.key, required this.newsId});

  @override
  Widget build(BuildContext context) {
    final newsItem = DataNews.newsItems.firstWhere((item) => item.id == newsId);

    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Berita'),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BannerImageDetailWidget(imagePath: newsItem.imagePath),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeadingDetailWidget(
                    title: newsItem.title,
                    author: newsItem.author,
                    date: newsItem.date,
                  ),
                  const SizedBox(height: 24),
                  ContentNewsDetailWidget(paragraphs: newsItem.description),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
