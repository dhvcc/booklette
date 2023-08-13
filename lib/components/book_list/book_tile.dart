import 'package:booklette/components/book_list/book_cover.dart';
import 'package:epub_view/epub_view.dart' as e;
import 'package:flutter/material.dart';

class BookTile extends StatelessWidget {
  final e.EpubBook data;

  const BookTile({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {},
        child: Column(
          children: [
            const SizedBox(height: 10),
            Text(
              data.Title ?? 'No Title',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 10),
            BookCover(image: data.CoverImage),
            // cover,
          ],
        ),
      ),
    );
  }
}
