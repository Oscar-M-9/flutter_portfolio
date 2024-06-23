import 'package:flutter/material.dart';

class MenuNotifier extends ChangeNotifier {
  bool _isOpen = false;

  bool get isOpen => _isOpen;

  set isOpen(bool status) {
    _isOpen = status;
    notifyListeners();
  }
}
