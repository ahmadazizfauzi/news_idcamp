class NewsItem {
  final int id;
  final String title;
  final String author;
  final String date;
  final String imagePath;
  final List<String> description;

  NewsItem({
    required this.id,
    required this.title,
    required this.author,
    required this.date,
    required this.imagePath,
    required this.description,
  });
}

class DataNews {
  static List<NewsItem> newsItems = [
    NewsItem(
      id: 1,
      title: "Tips Menjaga Kesehatan Mental di Era Digital",
      author: "Dr. Sarah Wilson",
      date: "2 jam yang lalu",
      imagePath: "assets/images/news/news_image.jpeg",
      description: [
        "Di era digital yang serba cepat ini, menjaga kesehatan mental menjadi tantangan tersendiri. Penggunaan media sosial yang berlebihan, berita yang membanjiri timeline, dan tuntutan untuk selalu terhubung dapat mempengaruhi kesejahteraan mental kita. Penting untuk menyadari dampak teknologi terhadap kesehatan mental dan mengambil langkah-langkah preventif.",
        "Beberapa tips yang dapat membantu menjaga kesehatan mental di era digital antara lain: membatasi waktu penggunaan gadget, mematikan notifikasi yang tidak penting, dan menyediakan waktu khusus untuk digital detox. Selain itu, penting juga untuk membangun hubungan nyata dengan orang-orang terdekat dan melakukan aktivitas fisik secara teratur.",
        "Jangan lupa untuk selalu memprioritaskan kesehatan mental Anda. Jika merasa kewalahan, jangan ragu untuk mencari bantuan profesional. Ingat bahwa mengambil jeda dari dunia digital bukanlah hal yang buruk, melainkan langkah penting untuk menjaga keseimbangan hidup di era modern.",
      ],
    ),
    NewsItem(
      id: 2,
      title: "Pentingnya Olahraga Rutin untuk Kesehatan Jantung",
      author: "John Smith",
      date: "5 jam yang lalu",
      imagePath: "assets/images/news/news_image.jpeg",
      description: [
        "Olahraga rutin memiliki banyak manfaat bagi kesehatan jantung. Selain membantu menurunkan tekanan darah dan mengurangi risiko penyakit jantung, olahraga juga dapat meningkatkan kesehatan mental dan meningkatkan kualitas hidup.",
        "Beberapa tips yang dapat membantu menjaga kesehatan jantung antara lain: melakukan olahraga secara teratur, memilih olahraga yang menyenangkan, dan mengkombinasikan olahraga dengan gaya hidup yang sehat.",
        "Jangan lupa untuk selalu memprioritaskan kesehatan jantung Anda. Jika merasa kewalahan, jangan ragu untuk mencari bantuan profesional. Ingat bahwa mengambil jeda dari olahraga bukanlah hal yang buruk, melainkan langkah penting untuk menjaga keseimbangan hidup di era modern.",
      ],
    ),
    NewsItem(
      id: 3,
      title: "Makanan Sehat untuk Meningkatkan Imunitas Tubuh",
      author: "Maria Garcia",
      date: "1 hari yang lalu",
      imagePath: "assets/images/news/news_image.jpeg",
      description: [
        "Makanan sehat memiliki banyak manfaat bagi kesehatan tubuh, termasuk meningkatkan imunitas tubuh. Selain itu, makanan sehat juga dapat meningkatkan kesehatan mental dan meningkatkan kualitas hidup.",
        "Beberapa tips yang dapat membantu menjaga kesehatan tubuh antara lain: mengonsumsi makanan yang seimbang, mengonsumsi buah-buahan dan sayuran secara teratur, dan mengonsumsi protein yang seimbang.",
        "Jangan lupa untuk selalu memprioritaskan kesehatan tubuh Anda. Jika merasa kewalahan, jangan ragu untuk mencari bantuan profesional. Ingat bahwa mengambil jeda dari makanan sehat bukanlah hal yang buruk, melainkan langkah penting untuk menjaga keseimbangan hidup di era modern.",
      ],
    ),
  ];
}
