// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryModel _$$_CategoryModelFromJson(Map<String, dynamic> json) =>
    _$_CategoryModel(
      error: json['error'] as bool,
      categories: (json['categories'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      categoryAliases: (json['categoryAliases'] as List<dynamic>)
          .map((e) => Map<String, String>.from(e as Map))
          .toList(),
      timestamp: (json['timestamp'] as num).toDouble(),
    );

Map<String, dynamic> _$$_CategoryModelToJson(_$_CategoryModel instance) =>
    <String, dynamic>{
      'error': instance.error,
      'categories': instance.categories,
      'categoryAliases': instance.categoryAliases,
      'timestamp': instance.timestamp,
    };
