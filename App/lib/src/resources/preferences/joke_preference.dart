import 'package:shared_preferences/shared_preferences.dart';

class JokePreference {
  setJokes(List<String> jokes) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setStringList('jokes', jokes);
  }

  Future<List<String>> getJokes() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getStringList('jokes') ?? [];
  }
}
