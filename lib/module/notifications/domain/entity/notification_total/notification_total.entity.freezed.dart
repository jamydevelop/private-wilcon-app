// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_total.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotificationTotalEntity {
  int get totalCountUnreadNotification => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationTotalEntityCopyWith<NotificationTotalEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationTotalEntityCopyWith<$Res> {
  factory $NotificationTotalEntityCopyWith(NotificationTotalEntity value,
          $Res Function(NotificationTotalEntity) then) =
      _$NotificationTotalEntityCopyWithImpl<$Res, NotificationTotalEntity>;
  @useResult
  $Res call({int totalCountUnreadNotification});
}

/// @nodoc
class _$NotificationTotalEntityCopyWithImpl<$Res,
        $Val extends NotificationTotalEntity>
    implements $NotificationTotalEntityCopyWith<$Res> {
  _$NotificationTotalEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCountUnreadNotification = null,
  }) {
    return _then(_value.copyWith(
      totalCountUnreadNotification: null == totalCountUnreadNotification
          ? _value.totalCountUnreadNotification
          : totalCountUnreadNotification // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationEntityImplCopyWith<$Res>
    implements $NotificationTotalEntityCopyWith<$Res> {
  factory _$$NotificationEntityImplCopyWith(_$NotificationEntityImpl value,
          $Res Function(_$NotificationEntityImpl) then) =
      __$$NotificationEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int totalCountUnreadNotification});
}

/// @nodoc
class __$$NotificationEntityImplCopyWithImpl<$Res>
    extends _$NotificationTotalEntityCopyWithImpl<$Res,
        _$NotificationEntityImpl>
    implements _$$NotificationEntityImplCopyWith<$Res> {
  __$$NotificationEntityImplCopyWithImpl(_$NotificationEntityImpl _value,
      $Res Function(_$NotificationEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCountUnreadNotification = null,
  }) {
    return _then(_$NotificationEntityImpl(
      totalCountUnreadNotification: null == totalCountUnreadNotification
          ? _value.totalCountUnreadNotification
          : totalCountUnreadNotification // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$NotificationEntityImpl implements _NotificationEntity {
  const _$NotificationEntityImpl({required this.totalCountUnreadNotification});

  @override
  final int totalCountUnreadNotification;

  @override
  String toString() {
    return 'NotificationTotalEntity(totalCountUnreadNotification: $totalCountUnreadNotification)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationEntityImpl &&
            (identical(other.totalCountUnreadNotification,
                    totalCountUnreadNotification) ||
                other.totalCountUnreadNotification ==
                    totalCountUnreadNotification));
  }

  @override
  int get hashCode => Object.hash(runtimeType, totalCountUnreadNotification);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationEntityImplCopyWith<_$NotificationEntityImpl> get copyWith =>
      __$$NotificationEntityImplCopyWithImpl<_$NotificationEntityImpl>(
          this, _$identity);
}

abstract class _NotificationEntity implements NotificationTotalEntity {
  const factory _NotificationEntity(
          {required final int totalCountUnreadNotification}) =
      _$NotificationEntityImpl;

  @override
  int get totalCountUnreadNotification;
  @override
  @JsonKey(ignore: true)
  _$$NotificationEntityImplCopyWith<_$NotificationEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
