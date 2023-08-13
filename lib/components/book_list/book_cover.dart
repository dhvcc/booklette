import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image/image.dart' as img;

class BookCover extends StatefulWidget {
  final img.Image? image;

  const BookCover({
    super.key,
    required this.image,
  });

  @override
  State<BookCover> createState() => _BookCoverState();
}

class _BookCoverState extends State<BookCover> {
  Uint8List? load(data) {
    if (data != null) {
      return Uint8List.fromList(img.encodeJpg(data, quality: 30));
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Uint8List?>(
      future: compute(load, widget.image),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          return const Center(
            child: Text('Error loading image'),
          );
        } else if (snapshot.hasData) {
          return Image.memory(snapshot.data!);
        } else {
          return const Text("No image");
        }
      },
    );
  }
}
