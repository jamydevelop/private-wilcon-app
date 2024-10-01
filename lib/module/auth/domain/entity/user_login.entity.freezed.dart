// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_login.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserLoginEntity {
  String get emailValue => throw _privateConstructorUsedError;
  String get passwordValue => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserLoginEntityCopyWith<UserLoginEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLoginEntityCopyWith<$Res> {
  factory $UserLoginEntityCopyWith(
          UserLoginEntity value, $Res Function(UserLoginEntity) then) =
      _$UserLoginEntityCopyWithImpl<$Res, UserLoginEntity>;
  @useResult
  $Res call({String emailValue, String passwordValue});
}

/// @nodoc
class _$UserLoginEntityCopyWithImpl<$Res, $Val extends UserLoginEntity>
    implements $UserLoginEntityCopyWith<$Res> {
  _$UserLoginEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailValue = null,
    Object? passwordValue = null,
  }) {
    return _then(_value.copyWith(
      emailValue: null == emailValue
          ? _value.emailValue
          : emailValue // ignore: cast_nullable_to_non_nullable
              as String,
      passwordValue: null == passwordValue
          ? _value.passwordValue
          : passwordValue // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserLoginEntityImplCopyWith<$Res>
    implements $UserLoginEntityCopyWith<$Res> {
  factory _$$UserLoginEntityImplCopyWith(_$UserLoginEntityImpl value,
          $Res Function(_$UserLoginEntityImpl) then) =
      __$$UserLoginEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String emailValue, String passwordValue});
}

/// @nodoc
class __$$UserLoginEntityImplCopyWithImpl<$Res>
    extends _$UserLoginEntityCopyWithImpl<$Res, _$UserLoginEntityImpl>
    implements _$$UserLoginEntityImplCopyWith<$Res> {
  __$$UserLoginEntityImplCopyWithImpl(
      _$UserLoginEntityImpl _value, $Res Function(_$UserLoginEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailValue = null,
    Object? passwordValue = null,
  }) {
    return _then(_$UserLoginEntityImpl(
      emailValue: null == emailValue
          ? _value.emailValue
          : emailValue // ignore: cast_nullable_to_non_nullable
              as String,
      passwordValue: null == passwordValue
          ? _value.passwordValue
          : passwordValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserLoginEntityImpl implements _UserLoginEntity {
  const _$UserLoginEntityImpl(
      {required this.emailValue, required this.passwordValue});

  @override
  final String emailValue;
  @override
  final String passwordValue;

  @override
  String toString() {
    return 'UserLoginEntity(emailValue: $emailValue, passwordValue: $passwordValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoginEntityImpl &&
            (identical(other.emailValue, emailValue) ||
                other.emailValue == emailValue) &&
            (identical(other.passwordValue, passwordValue) ||
                other.passwordValue == passwordValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailValue, passwordValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoginEntityImplCopyWith<_$UserLoginEntityImpl> get copyWith =>
      __$$UserLoginEntityImplCopyWithImpl<_$UserLoginEntityImpl>(
          this, _$identity);
}

abstract class _UserLoginEntity implements UserLoginEntity {
  const factory _UserLoginEntity(
      {required final String emailValue,
      required final String passwordValue}) = _$UserLoginEntityImpl;

  @override
  String get emailValue;
  @override
  String get passwordValue;
  @override
  @JsonKey(ignore: true)
  _$$UserLoginEntityImplCopyWith<_$UserLoginEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
