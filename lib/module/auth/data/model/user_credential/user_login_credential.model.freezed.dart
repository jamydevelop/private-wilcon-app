// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_login_credential.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserLoginCredentialModel _$UserLoginCredentialModelFromJson(
    Map<String, dynamic> json) {
  return _UserLoginModel.fromJson(json);
}

/// @nodoc
mixin _$UserLoginCredentialModel {
  @JsonKey(name: "email")
  String get emailValue => throw _privateConstructorUsedError;
  @JsonKey(name: "password")
  String get passwordValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserLoginCredentialModelCopyWith<UserLoginCredentialModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLoginCredentialModelCopyWith<$Res> {
  factory $UserLoginCredentialModelCopyWith(UserLoginCredentialModel value,
          $Res Function(UserLoginCredentialModel) then) =
      _$UserLoginCredentialModelCopyWithImpl<$Res, UserLoginCredentialModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "email") String emailValue,
      @JsonKey(name: "password") String passwordValue});
}

/// @nodoc
class _$UserLoginCredentialModelCopyWithImpl<$Res,
        $Val extends UserLoginCredentialModel>
    implements $UserLoginCredentialModelCopyWith<$Res> {
  _$UserLoginCredentialModelCopyWithImpl(this._value, this._then);

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
abstract class _$$UserLoginModelImplCopyWith<$Res>
    implements $UserLoginCredentialModelCopyWith<$Res> {
  factory _$$UserLoginModelImplCopyWith(_$UserLoginModelImpl value,
          $Res Function(_$UserLoginModelImpl) then) =
      __$$UserLoginModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "email") String emailValue,
      @JsonKey(name: "password") String passwordValue});
}

/// @nodoc
class __$$UserLoginModelImplCopyWithImpl<$Res>
    extends _$UserLoginCredentialModelCopyWithImpl<$Res, _$UserLoginModelImpl>
    implements _$$UserLoginModelImplCopyWith<$Res> {
  __$$UserLoginModelImplCopyWithImpl(
      _$UserLoginModelImpl _value, $Res Function(_$UserLoginModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailValue = null,
    Object? passwordValue = null,
  }) {
    return _then(_$UserLoginModelImpl(
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
@JsonSerializable()
class _$UserLoginModelImpl implements _UserLoginModel {
  const _$UserLoginModelImpl(
      {@JsonKey(name: "email") required this.emailValue,
      @JsonKey(name: "password") required this.passwordValue});

  factory _$UserLoginModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserLoginModelImplFromJson(json);

  @override
  @JsonKey(name: "email")
  final String emailValue;
  @override
  @JsonKey(name: "password")
  final String passwordValue;

  @override
  String toString() {
    return 'UserLoginCredentialModel(emailValue: $emailValue, passwordValue: $passwordValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoginModelImpl &&
            (identical(other.emailValue, emailValue) ||
                other.emailValue == emailValue) &&
            (identical(other.passwordValue, passwordValue) ||
                other.passwordValue == passwordValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, emailValue, passwordValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoginModelImplCopyWith<_$UserLoginModelImpl> get copyWith =>
      __$$UserLoginModelImplCopyWithImpl<_$UserLoginModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserLoginModelImplToJson(
      this,
    );
  }
}

abstract class _UserLoginModel implements UserLoginCredentialModel {
  const factory _UserLoginModel(
          {@JsonKey(name: "email") required final String emailValue,
          @JsonKey(name: "password") required final String passwordValue}) =
      _$UserLoginModelImpl;

  factory _UserLoginModel.fromJson(Map<String, dynamic> json) =
      _$UserLoginModelImpl.fromJson;

  @override
  @JsonKey(name: "email")
  String get emailValue;
  @override
  @JsonKey(name: "password")
  String get passwordValue;
  @override
  @JsonKey(ignore: true)
  _$$UserLoginModelImplCopyWith<_$UserLoginModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
