import 'package:booklette/state/store.dart';
import 'package:epub_view/epub_view.dart';

addBook(EpubBook value) {
  books.value.add(value);
  // ignore: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
  books.notifyListeners();
}
