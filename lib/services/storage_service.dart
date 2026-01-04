import 'package:shared_preferences/shared_preferences.dart';

class StorageService {

  // Counter save
  static Future<void> saveCounter(int value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt('counter', value);
  }

  // Counter get
  static Future<int> getCounter() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt('counter') ?? 0;
  }

  // Todo save
  static Future<void> saveTasks(List<String> tasks) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setStringList('tasks', tasks);
  }

  // Todo get
  static Future<List<String>> getTasks() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList('tasks') ?? [];
  }
}
