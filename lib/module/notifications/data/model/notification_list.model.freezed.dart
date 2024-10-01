// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_list.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotificationListModel _$NotificationListModelFromJson(
    Map<String, dynamic> json) {
  return _RandomStringModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationListModel {
  @JsonKey(name: "createdAt")
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "checklistId")
  int get checklistId => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationListModelCopyWith<NotificationListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationListModelCopyWith<$Res> {
  factory $NotificationListModelCopyWith(NotificationListModel value,
          $Res Function(NotificationListModel) then) =
      _$NotificationListModelCopyWithImpl<$Res, NotificationListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "createdAt") String createdAt,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "checklistId") int checklistId,
      @JsonKey(name: "status") String status});
}

/// @nodoc
class _$NotificationListModelCopyWithImpl<$Res,
        $Val extends NotificationListModel>
    implements $NotificationListModelCopyWith<$Res> {
  _$NotificationListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? description = null,
    Object? checklistId = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      checklistId: null == checklistId
          ? _value.checklistId
          : checklistId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RandomStringModelImplCopyWith<$Res>
    implements $NotificationListModelCopyWith<$Res> {
  factory _$$RandomStringModelImplCopyWith(_$RandomStringModelImpl value,
          $Res Function(_$RandomStringModelImpl) then) =
      __$$RandomStringModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "createdAt") String createdAt,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "checklistId") int checklistId,
      @JsonKey(name: "status") String status});
}

/// @nodoc
class __$$RandomStringModelImplCopyWithImpl<$Res>
    extends _$NotificationListModelCopyWithImpl<$Res, _$RandomStringModelImpl>
    implements _$$RandomStringModelImplCopyWith<$Res> {
  __$$RandomStringModelImplCopyWithImpl(_$RandomStringModelImpl _value,
      $Res Function(_$RandomStringModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? description = null,
    Object? checklistId = null,
    Object? status = null,
  }) {
    return _then(_$RandomStringModelImpl(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      checklistId: null == checklistId
          ? _value.checklistId
          : checklistId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RandomStringModelImpl implements _RandomStringModel {
  const _$RandomStringModelImpl(
      {@JsonKey(name: "createdAt") required this.createdAt,
      @JsonKey(name: "description") required this.description,
      @JsonKey(name: "checklistId") required this.checklistId,
      @JsonKey(name: "status") required this.status});

  factory _$RandomStringModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RandomStringModelImplFromJson(json);

  @override
  @JsonKey(name: "createdAt")
  final String createdAt;
  @override
  @JsonKey(name: "description")
  final String description;
  @override
  @JsonKey(name: "checklistId")
  final int checklistId;
  @override
  @JsonKey(name: "status")
  final String status;

  @override
  String toString() {
    return 'NotificationListModel(createdAt: $createdAt, description: $description, checklistId: $checklistId, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RandomStringModelImpl &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.checklistId, checklistId) ||
                other.checklistId == checklistId) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, createdAt, description, checklistId, status);

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

abstract class _RandomStringModel implements NotificationListModel {
  const factory _RandomStringModel(
          {@JsonKey(name: "createdAt") required final String createdAt,
          @JsonKey(name: "description") required final String description,
          @JsonKey(name: "checklistId") required final int checklistId,
          @JsonKey(name: "status") required final String status}) =
      _$RandomStringModelImpl;

  factory _RandomStringModel.fromJson(Map<String, dynamic> json) =
      _$RandomStringModelImpl.fromJson;

  @override
  @JsonKey(name: "createdAt")
  String get createdAt;
  @override
  @JsonKey(name: "description")
  String get description;
  @override
  @JsonKey(name: "checklistId")
  int get checklistId;
  @override
  @JsonKey(name: "status")
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$RandomStringModelImplCopyWith<_$RandomStringModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
