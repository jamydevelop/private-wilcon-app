// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remote.exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RemoteException {
  int get statusCode => throw _privateConstructorUsedError;
  RemoteErrorResponse get body => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemoteExceptionCopyWith<RemoteException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteExceptionCopyWith<$Res> {
  factory $RemoteExceptionCopyWith(
          RemoteException value, $Res Function(RemoteException) then) =
      _$RemoteExceptionCopyWithImpl<$Res, RemoteException>;
  @useResult
  $Res call({int statusCode, RemoteErrorResponse body});

  $RemoteErrorResponseCopyWith<$Res> get body;
}

/// @nodoc
class _$RemoteExceptionCopyWithImpl<$Res, $Val extends RemoteException>
    implements $RemoteExceptionCopyWith<$Res> {
  _$RemoteExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? body = null,
  }) {
    return _then(_value.copyWith(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as RemoteErrorResponse,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RemoteErrorResponseCopyWith<$Res> get body {
    return $RemoteErrorResponseCopyWith<$Res>(_value.body, (value) {
      return _then(_value.copyWith(body: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RemoteExceptionImplCopyWith<$Res>
    implements $RemoteExceptionCopyWith<$Res> {
  factory _$$RemoteExceptionImplCopyWith(_$RemoteExceptionImpl value,
          $Res Function(_$RemoteExceptionImpl) then) =
      __$$RemoteExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int statusCode, RemoteErrorResponse body});

  @override
  $RemoteErrorResponseCopyWith<$Res> get body;
}

/// @nodoc
class __$$RemoteExceptionImplCopyWithImpl<$Res>
    extends _$RemoteExceptionCopyWithImpl<$Res, _$RemoteExceptionImpl>
    implements _$$RemoteExceptionImplCopyWith<$Res> {
  __$$RemoteExceptionImplCopyWithImpl(
      _$RemoteExceptionImpl _value, $Res Function(_$RemoteExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? body = null,
  }) {
    return _then(_$RemoteExceptionImpl(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as RemoteErrorResponse,
    ));
  }
}

/// @nodoc

class _$RemoteExceptionImpl implements _RemoteException {
  const _$RemoteExceptionImpl({required this.statusCode, required this.body});

  @override
  final int statusCode;
  @override
  final RemoteErrorResponse body;

  @override
  String toString() {
    return 'RemoteException(statusCode: $statusCode, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteExceptionImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.body, body) || other.body == body));
  }

  @override
  int get hashCode => Object.hash(runtimeType, statusCode, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoteExceptionImplCopyWith<_$RemoteExceptionImpl> get copyWith =>
      __$$RemoteExceptionImplCopyWithImpl<_$RemoteExceptionImpl>(
          this, _$identity);
}

abstract class _RemoteException implements RemoteException {
  const factory _RemoteException(
      {required final int statusCode,
      required final RemoteErrorResponse body}) = _$RemoteExceptionImpl;

  @override
  int get statusCode;
  @override
  RemoteErrorResponse get body;
  @override
  @JsonKey(ignore: true)
  _$$RemoteExceptionImplCopyWith<_$RemoteExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
