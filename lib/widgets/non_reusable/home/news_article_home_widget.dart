import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/constants/color/app_color.dart';
import 'package:news/data/data_news.dart';

class NewsArticle extends StatefulWidget {
  const NewsArticle({super.key});

  @override
  State<NewsArticle> createState() => _NewsArticleState();
}

class _NewsArticleState extends State<NewsArticle> {
  List<NewsItem> filteredNews = DataNews.newsItems;
  final TextEditingController searchController = TextEditingController();

  void searchNews(String query) {
    setState(() {
      filteredNews = DataNews.newsItems.where((news) {
        return news.title.toLowerCase().contains(query.toLowerCase()) ||
            news.author.toLowerCase().contains(query.toLowerCase());
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "Berita dan Artikel",
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: AppColors.primary,
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
        TextField(
          controller: searchController,
          onChanged: searchNews,
          decoration: InputDecoration(
            hintText: 'Cari berita...',
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.grey.shade200),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.grey.shade200),
            ),
          ),
        ),
        SizedBox(height: 16),
        ...filteredNews
            .map((news) => Column(
                  children: [
                    BuildNewsCard(
                      id: news.id,
                      title: news.title,
                      author: news.author,
                      date: news.date,
                      imagePath: news.imagePath,
                    ),
                    SizedBox(height: 12),
                  ],
                ))
            .toList(),
      ],
    );
  }
}

class BuildNewsCard extends StatelessWidget {
  final int id;
  final String title;
  final String author;
  final String date;
  final String imagePath;

  const BuildNewsCard({
    Key? key,
    required this.id,
    required this.title,
    required this.author,
    required this.date,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          '/detail-news',
          arguments: {'newsId': id},
        );
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade200),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
              child: Image.asset(
                imagePath,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 12,
                          backgroundColor: AppColors.primary.withOpacity(0.1),
                          child: Text(
                            author[0],
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.primary,
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        Flexible(
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  author,
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color: Colors.grey[600],
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Text(
                                " • ",
                                style: TextStyle(color: Colors.grey[400]),
                              ),
                              Text(
                                date,
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  color: Colors.grey[400],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
