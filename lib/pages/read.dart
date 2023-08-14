import 'package:epub_view/epub_view.dart';
import 'package:booklette/state/store.dart';
import 'package:epub_view/epub_view.dart';
import 'package:flutter/material.dart';

const readRouteName = 'Read';
const readRoutePath = '/read';

class ReadPage extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final data;

  const ReadPage({super.key, required this.data});

  @override
  State<ReadPage> createState() => _ReadPageState();
}

class _ReadPageState extends State<ReadPage> {
  late EpubController _epubController;

  @override
  void initState() {
    super.initState();
    _epubController = EpubController(
      // Load document
      document: Future.value(widget.data),
      // Set start point
      // epubCfi: 'epubcfi(/6/6[chapter-2]!/4/2/1612)',
    );
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: books,
      builder: (context, value, builderWidget) {
        print(widget.data);
        return EpubView(
          controller: _epubController,
        );
      },
    );
  }
}
