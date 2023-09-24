import 'package:freezed_annotation/freezed_annotation.dart';

part 'joke_model.freezed.dart';
part 'joke_model.g.dart';

@freezed
class JokeModel with _$JokeModel {
  factory JokeModel({
    required String? category,
    required String? type,
    required String? joke,
    required String? setup,
    required String? delivery,
    required Map<String, bool>? flags,
    required bool? safe,
    required String? lang,
    required int? id,
  }) = _JokeModel;

  factory JokeModel.fromJson(Map<String, dynamic> json) =>
      _$JokeModelFromJson(json);
}
