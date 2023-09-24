import 'dart:convert';

import 'package:forest_logger/forest_logger.dart';
import 'package:http/http.dart' as http;
import 'package:jokes_app/src/models/category/category_model.dart';
import 'package:jokes_app/src/models/joke/joke_model.dart';
import 'package:jokes_app/src/resources/helpers/key_helper.dart';

class JokeRepository {
  static Future<CategoryModel> getCategories() async {
    final response = await http.get(
      Uri.parse('${KeyHelper.baseUrl}/categories'),
    );
    return CategoryModel.fromJson(jsonDecode(response.body));
  }

  static Future<JokeModel> getJokeByCategory(String category) async {
    final response = await http.get(
      Uri.parse('${KeyHelper.baseUrl}/joke/$category'),
    );
    Forest.success("Response: ${response.body}");
    JokeModel joke = JokeModel.fromJson(jsonDecode(response.body));
    return JokeModel(
      category: joke.category,
      type: joke.type,
      joke: joke.joke,
      setup: joke.setup,
      delivery: joke.delivery,
      flags: joke.flags,
      safe: joke.safe,
      lang: joke.lang,
      id: joke.id,
    );
  }

  static Future<List<JokeModel>> getJokesByCategory(
      String category, int amount) async {
    final response = await http.get(
      Uri.parse('${KeyHelper.baseUrl}/joke/$category?amount=$amount'),
    );
    List<JokeModel> jokes = [];
    JokeModel jokeModel;
    for (var joke in jsonDecode(response.body)["jokes"]) {
      jokeModel = JokeModel.fromJson(joke);
      jokes.add(jokeModel);
    }
    Forest.info(jokes.length.toString());
    return jokes;
  }
}
// jsonDecode(response.body)["jokes"]
//     .map((joke) => JokeModel.fromJson(joke))
// .toList();
