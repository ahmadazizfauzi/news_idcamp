import 'package:flutter/material.dart';

class BannerImageDetailWidget extends StatelessWidget {
  final String imagePath;

  const BannerImageDetailWidget({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      width: double.infinity,
      height: 200,
      fit: BoxFit.cover,
    );
  }
}
