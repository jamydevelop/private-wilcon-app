// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'http_client_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HttpClientResponse {
  int get statusCode => throw _privateConstructorUsedError;
  Map<String, dynamic> get body => throw _privateConstructorUsedError;
  Map<String, dynamic> get headers => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HttpClientResponseCopyWith<HttpClientResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HttpClientResponseCopyWith<$Res> {
  factory $HttpClientResponseCopyWith(
          HttpClientResponse value, $Res Function(HttpClientResponse) then) =
      _$HttpClientResponseCopyWithImpl<$Res, HttpClientResponse>;
  @useResult
  $Res call(
      {int statusCode,
      Map<String, dynamic> body,
      Map<String, dynamic> headers});
}

/// @nodoc
class _$HttpClientResponseCopyWithImpl<$Res, $Val extends HttpClientResponse>
    implements $HttpClientResponseCopyWith<$Res> {
  _$HttpClientResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? body = null,
    Object? headers = null,
  }) {
    return _then(_value.copyWith(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      headers: null == headers
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HttpClientResponseImplCopyWith<$Res>
    implements $HttpClientResponseCopyWith<$Res> {
  factory _$$HttpClientResponseImplCopyWith(_$HttpClientResponseImpl value,
          $Res Function(_$HttpClientResponseImpl) then) =
      __$$HttpClientResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int statusCode,
      Map<String, dynamic> body,
      Map<String, dynamic> headers});
}

/// @nodoc
class __$$HttpClientResponseImplCopyWithImpl<$Res>
    extends _$HttpClientResponseCopyWithImpl<$Res, _$HttpClientResponseImpl>
    implements _$$HttpClientResponseImplCopyWith<$Res> {
  __$$HttpClientResponseImplCopyWithImpl(_$HttpClientResponseImpl _value,
      $Res Function(_$HttpClientResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? body = null,
    Object? headers = null,
  }) {
    return _then(_$HttpClientResponseImpl(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      body: null == body
          ? _value._body
          : body // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      headers: null == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$HttpClientResponseImpl implements _HttpClientResponse {
  const _$HttpClientResponseImpl(
      {required this.statusCode,
      required final Map<String, dynamic> body,
      required final Map<String, dynamic> headers})
      : _body = body,
        _headers = headers;

  @override
  final int statusCode;
  final Map<String, dynamic> _body;
  @override
  Map<String, dynamic> get body {
    if (_body is EqualUnmodifiableMapView) return _body;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_body);
  }

  final Map<String, dynamic> _headers;
  @override
  Map<String, dynamic> get headers {
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_headers);
  }

  @override
  String toString() {
    return 'HttpClientResponse(statusCode: $statusCode, body: $body, headers: $headers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HttpClientResponseImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            const DeepCollectionEquality().equals(other._body, _body) &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      statusCode,
      const DeepCollectionEquality().hash(_body),
      const DeepCollectionEquality().hash(_headers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HttpClientResponseImplCopyWith<_$HttpClientResponseImpl> get copyWith =>
      __$$HttpClientResponseImplCopyWithImpl<_$HttpClientResponseImpl>(
          this, _$identity);
}

abstract class _HttpClientResponse implements HttpClientResponse {
  const factory _HttpClientResponse(
      {required final int statusCode,
      required final Map<String, dynamic> body,
      required final Map<String, dynamic> headers}) = _$HttpClientResponseImpl;

  @override
  int get statusCode;
  @override
  Map<String, dynamic> get body;
  @override
  Map<String, dynamic> get headers;
  @override
  @JsonKey(ignore: true)
  _$$HttpClientResponseImplCopyWith<_$HttpClientResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
