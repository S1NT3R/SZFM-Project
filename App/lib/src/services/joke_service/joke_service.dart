import 'package:chopper/chopper.dart';
import 'package:jokes_app/src/resources/helpers/key_helper.dart';
import 'package:jokes_app/src/resources/interceptors/connectivity_inteceptor.dart';
import 'package:jokes_app/src/resources/interceptors/exception_interceptor.dart';
import 'package:jokes_app/src/services/converter/built_value_converter.dart';

part "joke_service.chopper.dart";

@ChopperApi(baseUrl: KeyHelper.baseUrl)
abstract class JokeService extends ChopperService {
  @Get(path: "categories")
  Future<Response> getCategories();

  @Get(path: "joke/{category}")
  Future<Response> getJokeByCategory(
    @Path() String category,
    @Query() int amount,
  );

  static JokeService create() {
    final client = ChopperClient(
      baseUrl: Uri.parse(KeyHelper.baseUrl),
      converter: BuiltValueConverter(),
      interceptors: [
        ConnectivityInterceptor(),
        ExceptionInterceptor(),
        HttpLoggingInterceptor(),
      ],
      services: [
        _$JokeService(),
      ],
    );
    return _$JokeService(client);
  }
}
