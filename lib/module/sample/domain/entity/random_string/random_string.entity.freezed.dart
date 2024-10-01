// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'random_string.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RandomStringEntity {
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RandomStringEntityCopyWith<RandomStringEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RandomStringEntityCopyWith<$Res> {
  factory $RandomStringEntityCopyWith(
          RandomStringEntity value, $Res Function(RandomStringEntity) then) =
      _$RandomStringEntityCopyWithImpl<$Res, RandomStringEntity>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$RandomStringEntityCopyWithImpl<$Res, $Val extends RandomStringEntity>
    implements $RandomStringEntityCopyWith<$Res> {
  _$RandomStringEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$RandomStringEntityImplCopyWith<$Res>
    implements $RandomStringEntityCopyWith<$Res> {
  factory _$$RandomStringEntityImplCopyWith(_$RandomStringEntityImpl value,
          $Res Function(_$RandomStringEntityImpl) then) =
      __$$RandomStringEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$RandomStringEntityImplCopyWithImpl<$Res>
    extends _$RandomStringEntityCopyWithImpl<$Res, _$RandomStringEntityImpl>
    implements _$$RandomStringEntityImplCopyWith<$Res> {
  __$$RandomStringEntityImplCopyWithImpl(_$RandomStringEntityImpl _value,
      $Res Function(_$RandomStringEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$RandomStringEntityImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RandomStringEntityImpl implements _RandomStringEntity {
  const _$RandomStringEntityImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'RandomStringEntity(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RandomStringEntityImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RandomStringEntityImplCopyWith<_$RandomStringEntityImpl> get copyWith =>
      __$$RandomStringEntityImplCopyWithImpl<_$RandomStringEntityImpl>(
          this, _$identity);
}

abstract class _RandomStringEntity implements RandomStringEntity {
  const factory _RandomStringEntity({required final String value}) =
      _$RandomStringEntityImpl;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$RandomStringEntityImplCopyWith<_$RandomStringEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
