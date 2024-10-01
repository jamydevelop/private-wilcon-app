// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'random_string.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RandomStringModel _$RandomStringModelFromJson(Map<String, dynamic> json) {
  return _RandomStringModel.fromJson(json);
}

/// @nodoc
mixin _$RandomStringModel {
  @JsonKey(name: "randomString")
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RandomStringModelCopyWith<RandomStringModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RandomStringModelCopyWith<$Res> {
  factory $RandomStringModelCopyWith(
          RandomStringModel value, $Res Function(RandomStringModel) then) =
      _$RandomStringModelCopyWithImpl<$Res, RandomStringModel>;
  @useResult
  $Res call({@JsonKey(name: "randomString") String value});
}

/// @nodoc
class _$RandomStringModelCopyWithImpl<$Res, $Val extends RandomStringModel>
    implements $RandomStringModelCopyWith<$Res> {
  _$RandomStringModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RandomStringModelImplCopyWith<$Res>
    implements $RandomStringModelCopyWith<$Res> {
  factory _$$RandomStringModelImplCopyWith(_$RandomStringModelImpl value,
          $Res Function(_$RandomStringModelImpl) then) =
      __$$RandomStringModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "randomString") String value});
}

/// @nodoc
class __$$RandomStringModelImplCopyWithImpl<$Res>
    extends _$RandomStringModelCopyWithImpl<$Res, _$RandomStringModelImpl>
    implements _$$RandomStringModelImplCopyWith<$Res> {
  __$$RandomStringModelImplCopyWithImpl(_$RandomStringModelImpl _value,
      $Res Function(_$RandomStringModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$RandomStringModelImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RandomStringModelImpl implements _RandomStringModel {
  const _$RandomStringModelImpl(
      {@JsonKey(name: "randomString") required this.value});

  factory _$RandomStringModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RandomStringModelImplFromJson(json);

  @override
  @JsonKey(name: "randomString")
  final String value;

  @override
  String toString() {
    return 'RandomStringModel(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RandomStringModelImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RandomStringModelImplCopyWith<_$RandomStringModelImpl> get copyWith =>
      __$$RandomStringModelImplCopyWithImpl<_$RandomStringModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RandomStringModelImplToJson(
      this,
    );
  }
}

abstract class _RandomStringModel implements RandomStringModel {
  const factory _RandomStringModel(
          {@JsonKey(name: "randomString") required final String value}) =
      _$RandomStringModelImpl;

  factory _RandomStringModel.fromJson(Map<String, dynamic> json) =
      _$RandomStringModelImpl.fromJson;

  @override
  @JsonKey(name: "randomString")
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$RandomStringModelImplCopyWith<_$RandomStringModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
