// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pref_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pref _$PrefFromJson(Map<String, dynamic> json) {
  return _Pref.fromJson(json);
}

/// @nodoc
mixin _$Pref {
  @JsonKey(name: 'pref_id')
  int get prefId => throw _privateConstructorUsedError;
  @JsonKey(name: 'pref_name')
  String get prefName => throw _privateConstructorUsedError;
  @JsonKey(name: 'pref_kana')
  String get prefKana => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrefCopyWith<Pref> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrefCopyWith<$Res> {
  factory $PrefCopyWith(Pref value, $Res Function(Pref) then) =
      _$PrefCopyWithImpl<$Res, Pref>;
  @useResult
  $Res call(
      {@JsonKey(name: 'pref_id') int prefId,
      @JsonKey(name: 'pref_name') String prefName,
      @JsonKey(name: 'pref_kana') String prefKana});
}

/// @nodoc
class _$PrefCopyWithImpl<$Res, $Val extends Pref>
    implements $PrefCopyWith<$Res> {
  _$PrefCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prefId = null,
    Object? prefName = null,
    Object? prefKana = null,
  }) {
    return _then(_value.copyWith(
      prefId: null == prefId
          ? _value.prefId
          : prefId // ignore: cast_nullable_to_non_nullable
              as int,
      prefName: null == prefName
          ? _value.prefName
          : prefName // ignore: cast_nullable_to_non_nullable
              as String,
      prefKana: null == prefKana
          ? _value.prefKana
          : prefKana // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PrefCopyWith<$Res> implements $PrefCopyWith<$Res> {
  factory _$$_PrefCopyWith(_$_Pref value, $Res Function(_$_Pref) then) =
      __$$_PrefCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'pref_id') int prefId,
      @JsonKey(name: 'pref_name') String prefName,
      @JsonKey(name: 'pref_kana') String prefKana});
}

/// @nodoc
class __$$_PrefCopyWithImpl<$Res> extends _$PrefCopyWithImpl<$Res, _$_Pref>
    implements _$$_PrefCopyWith<$Res> {
  __$$_PrefCopyWithImpl(_$_Pref _value, $Res Function(_$_Pref) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prefId = null,
    Object? prefName = null,
    Object? prefKana = null,
  }) {
    return _then(_$_Pref(
      prefId: null == prefId
          ? _value.prefId
          : prefId // ignore: cast_nullable_to_non_nullable
              as int,
      prefName: null == prefName
          ? _value.prefName
          : prefName // ignore: cast_nullable_to_non_nullable
              as String,
      prefKana: null == prefKana
          ? _value.prefKana
          : prefKana // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Pref with DiagnosticableTreeMixin implements _Pref {
  const _$_Pref(
      {@JsonKey(name: 'pref_id') required this.prefId,
      @JsonKey(name: 'pref_name') required this.prefName,
      @JsonKey(name: 'pref_kana') required this.prefKana});

  factory _$_Pref.fromJson(Map<String, dynamic> json) => _$$_PrefFromJson(json);

  @override
  @JsonKey(name: 'pref_id')
  final int prefId;
  @override
  @JsonKey(name: 'pref_name')
  final String prefName;
  @override
  @JsonKey(name: 'pref_kana')
  final String prefKana;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Pref(prefId: $prefId, prefName: $prefName, prefKana: $prefKana)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Pref'))
      ..add(DiagnosticsProperty('prefId', prefId))
      ..add(DiagnosticsProperty('prefName', prefName))
      ..add(DiagnosticsProperty('prefKana', prefKana));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pref &&
            (identical(other.prefId, prefId) || other.prefId == prefId) &&
            (identical(other.prefName, prefName) ||
                other.prefName == prefName) &&
            (identical(other.prefKana, prefKana) ||
                other.prefKana == prefKana));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, prefId, prefName, prefKana);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PrefCopyWith<_$_Pref> get copyWith =>
      __$$_PrefCopyWithImpl<_$_Pref>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PrefToJson(
      this,
    );
  }
}

abstract class _Pref implements Pref {
  const factory _Pref(
      {@JsonKey(name: 'pref_id') required final int prefId,
      @JsonKey(name: 'pref_name') required final String prefName,
      @JsonKey(name: 'pref_kana') required final String prefKana}) = _$_Pref;

  factory _Pref.fromJson(Map<String, dynamic> json) = _$_Pref.fromJson;

  @override
  @JsonKey(name: 'pref_id')
  int get prefId;
  @override
  @JsonKey(name: 'pref_name')
  String get prefName;
  @override
  @JsonKey(name: 'pref_kana')
  String get prefKana;
  @override
  @JsonKey(ignore: true)
  _$$_PrefCopyWith<_$_Pref> get copyWith => throw _privateConstructorUsedError;
}
