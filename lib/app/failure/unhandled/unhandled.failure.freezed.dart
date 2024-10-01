// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unhandled.failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UnhandledFailure {
  String? get referenceCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UnhandledFailureCopyWith<UnhandledFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnhandledFailureCopyWith<$Res> {
  factory $UnhandledFailureCopyWith(
          UnhandledFailure value, $Res Function(UnhandledFailure) then) =
      _$UnhandledFailureCopyWithImpl<$Res, UnhandledFailure>;
  @useResult
  $Res call({String? referenceCode});
}

/// @nodoc
class _$UnhandledFailureCopyWithImpl<$Res, $Val extends UnhandledFailure>
    implements $UnhandledFailureCopyWith<$Res> {
  _$UnhandledFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referenceCode = freezed,
  }) {
    return _then(_value.copyWith(
      referenceCode: freezed == referenceCode
          ? _value.referenceCode
          : referenceCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnhandledFailureImplCopyWith<$Res>
    implements $UnhandledFailureCopyWith<$Res> {
  factory _$$UnhandledFailureImplCopyWith(_$UnhandledFailureImpl value,
          $Res Function(_$UnhandledFailureImpl) then) =
      __$$UnhandledFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? referenceCode});
}

/// @nodoc
class __$$UnhandledFailureImplCopyWithImpl<$Res>
    extends _$UnhandledFailureCopyWithImpl<$Res, _$UnhandledFailureImpl>
    implements _$$UnhandledFailureImplCopyWith<$Res> {
  __$$UnhandledFailureImplCopyWithImpl(_$UnhandledFailureImpl _value,
      $Res Function(_$UnhandledFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referenceCode = freezed,
  }) {
    return _then(_$UnhandledFailureImpl(
      referenceCode: freezed == referenceCode
          ? _value.referenceCode
          : referenceCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UnhandledFailureImpl implements _UnhandledFailure {
  const _$UnhandledFailureImpl({this.referenceCode});

  @override
  final String? referenceCode;

  @override
  String toString() {
    return 'UnhandledFailure(referenceCode: $referenceCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnhandledFailureImpl &&
            (identical(other.referenceCode, referenceCode) ||
                other.referenceCode == referenceCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, referenceCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnhandledFailureImplCopyWith<_$UnhandledFailureImpl> get copyWith =>
      __$$UnhandledFailureImplCopyWithImpl<_$UnhandledFailureImpl>(
          this, _$identity);
}

abstract class _UnhandledFailure implements UnhandledFailure {
  const factory _UnhandledFailure({final String? referenceCode}) =
      _$UnhandledFailureImpl;

  @override
  String? get referenceCode;
  @override
  @JsonKey(ignore: true)
  _$$UnhandledFailureImplCopyWith<_$UnhandledFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
