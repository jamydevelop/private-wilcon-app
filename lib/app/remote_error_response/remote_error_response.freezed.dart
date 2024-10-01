// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remote_error_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RemoteErrorResponse _$RemoteErrorResponseFromJson(Map<String, dynamic> json) {
  return _RemoteErrorResponse.fromJson(json);
}

/// @nodoc
mixin _$RemoteErrorResponse {
  int get errorCode => throw _privateConstructorUsedError;
  Map<String, dynamic>? get errorMessage => throw _privateConstructorUsedError;
  Map<String, dynamic>? get errorDescription =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RemoteErrorResponseCopyWith<RemoteErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteErrorResponseCopyWith<$Res> {
  factory $RemoteErrorResponseCopyWith(
          RemoteErrorResponse value, $Res Function(RemoteErrorResponse) then) =
      _$RemoteErrorResponseCopyWithImpl<$Res, RemoteErrorResponse>;
  @useResult
  $Res call(
      {int errorCode,
      Map<String, dynamic>? errorMessage,
      Map<String, dynamic>? errorDescription});
}

/// @nodoc
class _$RemoteErrorResponseCopyWithImpl<$Res, $Val extends RemoteErrorResponse>
    implements $RemoteErrorResponseCopyWith<$Res> {
  _$RemoteErrorResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = null,
    Object? errorMessage = freezed,
    Object? errorDescription = freezed,
  }) {
    return _then(_value.copyWith(
      errorCode: null == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      errorDescription: freezed == errorDescription
          ? _value.errorDescription
          : errorDescription // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RemoteErrorResponseImplCopyWith<$Res>
    implements $RemoteErrorResponseCopyWith<$Res> {
  factory _$$RemoteErrorResponseImplCopyWith(_$RemoteErrorResponseImpl value,
          $Res Function(_$RemoteErrorResponseImpl) then) =
      __$$RemoteErrorResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int errorCode,
      Map<String, dynamic>? errorMessage,
      Map<String, dynamic>? errorDescription});
}

/// @nodoc
class __$$RemoteErrorResponseImplCopyWithImpl<$Res>
    extends _$RemoteErrorResponseCopyWithImpl<$Res, _$RemoteErrorResponseImpl>
    implements _$$RemoteErrorResponseImplCopyWith<$Res> {
  __$$RemoteErrorResponseImplCopyWithImpl(_$RemoteErrorResponseImpl _value,
      $Res Function(_$RemoteErrorResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = null,
    Object? errorMessage = freezed,
    Object? errorDescription = freezed,
  }) {
    return _then(_$RemoteErrorResponseImpl(
      errorCode: null == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage: freezed == errorMessage
          ? _value._errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      errorDescription: freezed == errorDescription
          ? _value._errorDescription
          : errorDescription // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RemoteErrorResponseImpl implements _RemoteErrorResponse {
  const _$RemoteErrorResponseImpl(
      {required this.errorCode,
      final Map<String, dynamic>? errorMessage,
      final Map<String, dynamic>? errorDescription})
      : _errorMessage = errorMessage,
        _errorDescription = errorDescription;

  factory _$RemoteErrorResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RemoteErrorResponseImplFromJson(json);

  @override
  final int errorCode;
  final Map<String, dynamic>? _errorMessage;
  @override
  Map<String, dynamic>? get errorMessage {
    final value = _errorMessage;
    if (value == null) return null;
    if (_errorMessage is EqualUnmodifiableMapView) return _errorMessage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _errorDescription;
  @override
  Map<String, dynamic>? get errorDescription {
    final value = _errorDescription;
    if (value == null) return null;
    if (_errorDescription is EqualUnmodifiableMapView) return _errorDescription;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'RemoteErrorResponse(errorCode: $errorCode, errorMessage: $errorMessage, errorDescription: $errorDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteErrorResponseImpl &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            const DeepCollectionEquality()
                .equals(other._errorMessage, _errorMessage) &&
            const DeepCollectionEquality()
                .equals(other._errorDescription, _errorDescription));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      errorCode,
      const DeepCollectionEquality().hash(_errorMessage),
      const DeepCollectionEquality().hash(_errorDescription));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoteErrorResponseImplCopyWith<_$RemoteErrorResponseImpl> get copyWith =>
      __$$RemoteErrorResponseImplCopyWithImpl<_$RemoteErrorResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RemoteErrorResponseImplToJson(
      this,
    );
  }
}

abstract class _RemoteErrorResponse implements RemoteErrorResponse {
  const factory _RemoteErrorResponse(
          {required final int errorCode,
          final Map<String, dynamic>? errorMessage,
          final Map<String, dynamic>? errorDescription}) =
      _$RemoteErrorResponseImpl;

  factory _RemoteErrorResponse.fromJson(Map<String, dynamic> json) =
      _$RemoteErrorResponseImpl.fromJson;

  @override
  int get errorCode;
  @override
  Map<String, dynamic>? get errorMessage;
  @override
  Map<String, dynamic>? get errorDescription;
  @override
  @JsonKey(ignore: true)
  _$$RemoteErrorResponseImplCopyWith<_$RemoteErrorResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
