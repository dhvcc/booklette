import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class AddFAB extends StatelessWidget {
  const AddFAB({super.key});

  onTap() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    var path = result?.files.single.path;

    if (path != null) {
      return File(path);
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
