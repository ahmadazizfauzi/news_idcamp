import 'package:flutter/material.dart';

class ContentNewsDetailWidget extends StatelessWidget {
  final List<String> paragraphs;

  const ContentNewsDetailWidget({
    super.key,
    required this.paragraphs,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: paragraphs
          .map((paragraph) => Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text(
                  paragraph,
                  style: const TextStyle(
                    fontSize: 16,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ))
          .toList(),
    );
  }
}
