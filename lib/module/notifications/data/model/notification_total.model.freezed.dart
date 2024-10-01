// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_total.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotificationTotalModel _$NotificationTotalModelFromJson(
    Map<String, dynamic> json) {
  return _NotificationTotalModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationTotalModel {
  @JsonKey(name: "totalCountUnreadNotification")
  int get totalCountUnreadNotification => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationTotalModelCopyWith<NotificationTotalModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationTotalModelCopyWith<$Res> {
  factory $NotificationTotalModelCopyWith(NotificationTotalModel value,
          $Res Function(NotificationTotalModel) then) =
      _$NotificationTotalModelCopyWithImpl<$Res, NotificationTotalModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "totalCountUnreadNotification")
      int totalCountUnreadNotification});
}

/// @nodoc
class _$NotificationTotalModelCopyWithImpl<$Res,
        $Val extends NotificationTotalModel>
    implements $NotificationTotalModelCopyWith<$Res> {
  _$NotificationTotalModelCopyWithImpl(this._value, this._then);

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
abstract class _$$NotificationTotalModelImplCopyWith<$Res>
    implements $NotificationTotalModelCopyWith<$Res> {
  factory _$$NotificationTotalModelImplCopyWith(
          _$NotificationTotalModelImpl value,
          $Res Function(_$NotificationTotalModelImpl) then) =
      __$$NotificationTotalModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "totalCountUnreadNotification")
      int totalCountUnreadNotification});
}

/// @nodoc
class __$$NotificationTotalModelImplCopyWithImpl<$Res>
    extends _$NotificationTotalModelCopyWithImpl<$Res,
        _$NotificationTotalModelImpl>
    implements _$$NotificationTotalModelImplCopyWith<$Res> {
  __$$NotificationTotalModelImplCopyWithImpl(
      _$NotificationTotalModelImpl _value,
      $Res Function(_$NotificationTotalModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCountUnreadNotification = null,
  }) {
    return _then(_$NotificationTotalModelImpl(
      totalCountUnreadNotification: null == totalCountUnreadNotification
          ? _value.totalCountUnreadNotification
          : totalCountUnreadNotification // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationTotalModelImpl implements _NotificationTotalModel {
  const _$NotificationTotalModelImpl(
      {@JsonKey(name: "totalCountUnreadNotification")
      required this.totalCountUnreadNotification});

  factory _$NotificationTotalModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationTotalModelImplFromJson(json);

  @override
  @JsonKey(name: "totalCountUnreadNotification")
  final int totalCountUnreadNotification;

  @override
  String toString() {
    return 'NotificationTotalModel(totalCountUnreadNotification: $totalCountUnreadNotification)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationTotalModelImpl &&
            (identical(other.totalCountUnreadNotification,
                    totalCountUnreadNotification) ||
                other.totalCountUnreadNotification ==
                    totalCountUnreadNotification));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalCountUnreadNotification);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationTotalModelImplCopyWith<_$NotificationTotalModelImpl>
      get copyWith => __$$NotificationTotalModelImplCopyWithImpl<
          _$NotificationTotalModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationTotalModelImplToJson(
      this,
    );
  }
}

abstract class _NotificationTotalModel implements NotificationTotalModel {
  const factory _NotificationTotalModel(
          {@JsonKey(name: "totalCountUnreadNotification")
          required final int totalCountUnreadNotification}) =
      _$NotificationTotalModelImpl;

  factory _NotificationTotalModel.fromJson(Map<String, dynamic> json) =
      _$NotificationTotalModelImpl.fromJson;

  @override
  @JsonKey(name: "totalCountUnreadNotification")
  int get totalCountUnreadNotification;
  @override
  @JsonKey(ignore: true)
  _$$NotificationTotalModelImplCopyWith<_$NotificationTotalModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
