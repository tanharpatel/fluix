import 'package:flutter/foundation.dart';

class ScrollNotifier extends ChangeNotifier {
  bool _isScrolling;
  ScrollNotifier(this._isScrolling);
  get isScrolling => _isScrolling;

  set isScrolling(bool scrollStatus) {
    _isScrolling = scrollStatus;
    notifyListeners();
  }
}