import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/constants/color/app_color.dart';

class HeadingDetailWidget extends StatelessWidget {
  final String title;
  final String author;
  final String date;

  const HeadingDetailWidget({
    super.key,
    required this.title,
    required this.author,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
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
            Text(
              author,
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: Colors.grey[600],
              ),
            ),
            Text(
              " • ",
              style: TextStyle(color: Colors.grey[400]),
            ),
            Text(
              date,
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: Colors.grey[400],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
