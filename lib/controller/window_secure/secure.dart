import 'package:flutter_windowmanager/flutter_windowmanager.dart';

class SecureWindow {
  void flagon() async {
    await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
  }
}
