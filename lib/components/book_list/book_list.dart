import 'package:booklette/components/book_list/book_tile.dart';
import 'package:epub_view/epub_view.dart';
import 'package:flutter/material.dart';

class BookList extends StatelessWidget {
  final List<EpubBook> books;

  const BookList({
    super.key,
    required this.books,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: GridView.builder(
            itemCount: books.length,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              childAspectRatio: 1410 / 2250,
              maxCrossAxisExtent: 225.0,
              crossAxisSpacing: 20.0,
              mainAxisSpacing: 20.0,
            ),
            itemBuilder: (context, index) => BookTile(data: books[index]),
          ),
        ),
      ),
      // ),
    );
  }
}
