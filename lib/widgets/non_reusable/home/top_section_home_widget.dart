import 'package:flutter/material.dart';
import 'package:news/constants/color/app_color.dart';

class TopSectionHomeWidget extends StatelessWidget {
  const TopSectionHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Discover',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w900,
            fontFamily: 'Poppins',
          ),
        ),
        const Text(
          'Read your favourite news articles',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 20),
        Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [AppColors.primary, AppColors.secondary],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'FlutterNews',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Introducing Flutter News, the go-to platform for all your news needs! Whether it\'s into global affairs, tech innovations, sports highlights, entertainment buzz, or financial insights. We bring you the latest updates tailored to your interests.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
