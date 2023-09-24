// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'joke_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_string_interpolations, unnecessary_brace_in_string_interps
final class _$JokeService extends JokeService {
  _$JokeService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = JokeService;

  @override
  Future<Response<dynamic>> getCategories() {
    final Uri $url = Uri.parse('https://v2.jokeapi.dev/categories');

    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getJokeByCategory(
    String category,
    int amount,
  ) {
    final Uri $url = Uri.parse('https://v2.jokeapi.dev/joke/${category}');
    final Map<String, dynamic> $params = <String, dynamic>{'amount': amount};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
