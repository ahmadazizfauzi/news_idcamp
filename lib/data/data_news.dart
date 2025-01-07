class NewsItem {
  final String title;
  final String author;
  final String date;
  final String imagePath;

  NewsItem({
    required this.title,
    required this.author,
    required this.date,
    required this.imagePath,
  });
}

class DataNews {
  static List<NewsItem> newsItems = [
    NewsItem(
      title: "Tips Menjaga Kesehatan Mental di Era Digital",
      author: "Dr. Sarah Wilson",
      date: "2 jam yang lalu",
      imagePath: "assets/images/news/news_image.jpeg",
    ),
    NewsItem(
      title: "Pentingnya Olahraga Rutin untuk Kesehatan Jantung",
      author: "John Smith",
      date: "5 jam yang lalu",
      imagePath: "assets/images/news/news_image.jpeg",

    ),
    NewsItem(
      title: "Makanan Sehat untuk Meningkatkan Imunitas Tubuh",
      author: "Maria Garcia",
      date: "1 hari yang lalu",
      imagePath: "assets/images/news/news_image.jpeg",

    ),
  ];
}
