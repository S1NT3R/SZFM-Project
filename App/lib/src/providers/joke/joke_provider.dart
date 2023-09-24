import 'package:forest_logger/forest_logger.dart';
import 'package:jokes_app/src/models/category/category_model.dart';
import 'package:jokes_app/src/models/joke/joke_model.dart';
import 'package:jokes_app/src/repositories/joke_repository.dart';
import 'package:jokes_app/src/resources/handlers/exception_handler.dart';
import 'package:jokes_app/src/resources/interfaces/loading_interface.dart';

class JokeProvider extends LoadingInterface {
  JokeModel? jokeModel;
  List<JokeModel>? jokeModels;
  CategoryModel? categoryModel;
  List<String>? categories;

  Future<Exception?> getJokeByCategory(String category) async {
    try {
      isLoading = true;
      jokeModel = await JokeRepository.getJokeByCategory(category);
      Forest.success("Getting joke success: $jokeModel");
      isLoading = false;
      return null;
    } catch (e) {
      Forest.error(e.toString());
      isLoading = false;
      return ExceptionHandler.returnException(e);
    }
  }

  Future<Exception?> getJokesByCategory(String category, int amount) async {
    try {
      isLoading = true;
      jokeModels = await JokeRepository.getJokesByCategory(category, amount);
      Forest.success("Getting jokes success: $jokeModels");
      Forest.info(jokeModels!.length.toString());
      isLoading = false;
      return null;
    } catch (e) {
      Forest.error(e.toString());
      isLoading = false;
      return ExceptionHandler.returnException(e);
    }
  }

  Future<Exception?> getCategories() async {
    try {
      isLoading = true;
      categoryModel = await JokeRepository.getCategories();
      categories = categoryModel!.categories;
      Forest.success(
        "Getting categories success: $categoryModel",
      );
      isLoading = false;
      return null;
    } catch (e) {
      Forest.error(e.toString());
      Forest.debug(categories.toString());
      isLoading = false;
      return ExceptionHandler.returnException(e);
    }
  }
}
