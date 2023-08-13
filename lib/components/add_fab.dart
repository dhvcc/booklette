import 'dart:typed_data';

import 'package:booklette/state/actions.dart';
import 'package:epub_view/epub_view.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class AddFAB extends StatelessWidget {
  const AddFAB({super.key});

  onTap() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    Uint8List? data = result?.files.single.bytes;

    if (data != null) {
      EpubBook book = await EpubDocument.openData(data);
      addBook(book);
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onTap,
      child: const Icon(Icons.add),
    );
  }
}
