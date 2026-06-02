
import 'package:flutter/material.dart';

class VideoCardWidget extends StatelessWidget {
  final Map<String, String> video;

  const VideoCardWidget({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Container(
      width: screenSize.width * 0.4,
      margin: const EdgeInsets.only(right: 12.0),
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: const Color(0xFF1B1B1B),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ClipRect(
        child: Column(
          children: [
            SizedBox(
              height: 100,
              width: double.infinity,
              child: Image.network(
                video['thumbnailUrl']!,
                fit: BoxFit.cover,
                errorBuilder: (c, e, s) => const Icon(Icons.broken_image),
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                video['title']!,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
