import 'package:hive_flutter/hive_flutter.dart';

class HiveService {
  static const String settingsBoxName = 'settings';

  static Future<void> init() async {
    await Hive.initFlutter();
    await Hive.openBox(settingsBoxName);
  }

  static Box<dynamic> get settingsBox => Hive.box(settingsBoxName);
}
