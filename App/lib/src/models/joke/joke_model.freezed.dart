// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'joke_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JokeModel _$JokeModelFromJson(Map<String, dynamic> json) {
  return _JokeModel.fromJson(json);
}

/// @nodoc
mixin _$JokeModel {
  String? get category => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get joke => throw _privateConstructorUsedError;
  String? get setup => throw _privateConstructorUsedError;
  String? get delivery => throw _privateConstructorUsedError;
  Map<String, bool>? get flags => throw _privateConstructorUsedError;
  bool? get safe => throw _privateConstructorUsedError;
  String? get lang => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JokeModelCopyWith<JokeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JokeModelCopyWith<$Res> {
  factory $JokeModelCopyWith(JokeModel value, $Res Function(JokeModel) then) =
      _$JokeModelCopyWithImpl<$Res, JokeModel>;
  @useResult
  $Res call(
      {String? category,
      String? type,
      String? joke,
      String? setup,
      String? delivery,
      Map<String, bool>? flags,
      bool? safe,
      String? lang,
      int? id});
}

/// @nodoc
class _$JokeModelCopyWithImpl<$Res, $Val extends JokeModel>
    implements $JokeModelCopyWith<$Res> {
  _$JokeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
    Object? type = freezed,
    Object? joke = freezed,
    Object? setup = freezed,
    Object? delivery = freezed,
    Object? flags = freezed,
    Object? safe = freezed,
    Object? lang = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      joke: freezed == joke
          ? _value.joke
          : joke // ignore: cast_nullable_to_non_nullable
              as String?,
      setup: freezed == setup
          ? _value.setup
          : setup // ignore: cast_nullable_to_non_nullable
              as String?,
      delivery: freezed == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as String?,
      flags: freezed == flags
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>?,
      safe: freezed == safe
          ? _value.safe
          : safe // ignore: cast_nullable_to_non_nullable
              as bool?,
      lang: freezed == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_JokeModelCopyWith<$Res> implements $JokeModelCopyWith<$Res> {
  factory _$$_JokeModelCopyWith(
          _$_JokeModel value, $Res Function(_$_JokeModel) then) =
      __$$_JokeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? category,
      String? type,
      String? joke,
      String? setup,
      String? delivery,
      Map<String, bool>? flags,
      bool? safe,
      String? lang,
      int? id});
}

/// @nodoc
class __$$_JokeModelCopyWithImpl<$Res>
    extends _$JokeModelCopyWithImpl<$Res, _$_JokeModel>
    implements _$$_JokeModelCopyWith<$Res> {
  __$$_JokeModelCopyWithImpl(
      _$_JokeModel _value, $Res Function(_$_JokeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
    Object? type = freezed,
    Object? joke = freezed,
    Object? setup = freezed,
    Object? delivery = freezed,
    Object? flags = freezed,
    Object? safe = freezed,
    Object? lang = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_JokeModel(
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      joke: freezed == joke
          ? _value.joke
          : joke // ignore: cast_nullable_to_non_nullable
              as String?,
      setup: freezed == setup
          ? _value.setup
          : setup // ignore: cast_nullable_to_non_nullable
              as String?,
      delivery: freezed == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as String?,
      flags: freezed == flags
          ? _value._flags
          : flags // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>?,
      safe: freezed == safe
          ? _value.safe
          : safe // ignore: cast_nullable_to_non_nullable
              as bool?,
      lang: freezed == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JokeModel implements _JokeModel {
  _$_JokeModel(
      {required this.category,
      required this.type,
      required this.joke,
      required this.setup,
      required this.delivery,
      required final Map<String, bool>? flags,
      required this.safe,
      required this.lang,
      required this.id})
      : _flags = flags;

  factory _$_JokeModel.fromJson(Map<String, dynamic> json) =>
      _$$_JokeModelFromJson(json);

  @override
  final String? category;
  @override
  final String? type;
  @override
  final String? joke;
  @override
  final String? setup;
  @override
  final String? delivery;
  final Map<String, bool>? _flags;
  @override
  Map<String, bool>? get flags {
    final value = _flags;
    if (value == null) return null;
    if (_flags is EqualUnmodifiableMapView) return _flags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final bool? safe;
  @override
  final String? lang;
  @override
  final int? id;

  @override
  String toString() {
    return 'JokeModel(category: $category, type: $type, joke: $joke, setup: $setup, delivery: $delivery, flags: $flags, safe: $safe, lang: $lang, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JokeModel &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.joke, joke) || other.joke == joke) &&
            (identical(other.setup, setup) || other.setup == setup) &&
            (identical(other.delivery, delivery) ||
                other.delivery == delivery) &&
            const DeepCollectionEquality().equals(other._flags, _flags) &&
            (identical(other.safe, safe) || other.safe == safe) &&
            (identical(other.lang, lang) || other.lang == lang) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, category, type, joke, setup,
      delivery, const DeepCollectionEquality().hash(_flags), safe, lang, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JokeModelCopyWith<_$_JokeModel> get copyWith =>
      __$$_JokeModelCopyWithImpl<_$_JokeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JokeModelToJson(
      this,
    );
  }
}

abstract class _JokeModel implements JokeModel {
  factory _JokeModel(
      {required final String? category,
      required final String? type,
      required final String? joke,
      required final String? setup,
      required final String? delivery,
      required final Map<String, bool>? flags,
      required final bool? safe,
      required final String? lang,
      required final int? id}) = _$_JokeModel;

  factory _JokeModel.fromJson(Map<String, dynamic> json) =
      _$_JokeModel.fromJson;

  @override
  String? get category;
  @override
  String? get type;
  @override
  String? get joke;
  @override
  String? get setup;
  @override
  String? get delivery;
  @override
  Map<String, bool>? get flags;
  @override
  bool? get safe;
  @override
  String? get lang;
  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$_JokeModelCopyWith<_$_JokeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
