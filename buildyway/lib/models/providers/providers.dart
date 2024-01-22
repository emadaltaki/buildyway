import 'package:flutter/foundation.dart';

class ProviderTest with ChangeNotifier {
  String? _accessToken;

  String? get accessToken => _accessToken;

  void saveAccessToken(final String accessToken) {
    _accessToken = accessToken;
    notifyListeners();
  }
}
