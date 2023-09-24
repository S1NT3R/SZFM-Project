// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'joke_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JokeModel _$$_JokeModelFromJson(Map<String, dynamic> json) => _$_JokeModel(
      category: json['category'] as String?,
      type: json['type'] as String?,
      joke: json['joke'] as String?,
      setup: json['setup'] as String?,
      delivery: json['delivery'] as String?,
      flags: (json['flags'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as bool),
      ),
      safe: json['safe'] as bool?,
      lang: json['lang'] as String?,
      id: json['id'] as int?,
    );

Map<String, dynamic> _$$_JokeModelToJson(_$_JokeModel instance) =>
    <String, dynamic>{
      'category': instance.category,
      'type': instance.type,
      'joke': instance.joke,
      'setup': instance.setup,
      'delivery': instance.delivery,
      'flags': instance.flags,
      'safe': instance.safe,
      'lang': instance.lang,
      'id': instance.id,
    };
