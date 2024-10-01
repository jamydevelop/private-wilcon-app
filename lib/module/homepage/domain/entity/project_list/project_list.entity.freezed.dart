// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_list.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProjectListEntity {
  int get projectId => throw _privateConstructorUsedError;
  String get projectName => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectListEntityCopyWith<ProjectListEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectListEntityCopyWith<$Res> {
  factory $ProjectListEntityCopyWith(
          ProjectListEntity value, $Res Function(ProjectListEntity) then) =
      _$ProjectListEntityCopyWithImpl<$Res, ProjectListEntity>;
  @useResult
  $Res call(
      {int projectId, String projectName, String location, String status});
}

/// @nodoc
class _$ProjectListEntityCopyWithImpl<$Res, $Val extends ProjectListEntity>
    implements $ProjectListEntityCopyWith<$Res> {
  _$ProjectListEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectId = null,
    Object? projectName = null,
    Object? location = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as int,
      projectName: null == projectName
          ? _value.projectName
          : projectName // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProjectListEntityImplCopyWith<$Res>
    implements $ProjectListEntityCopyWith<$Res> {
  factory _$$ProjectListEntityImplCopyWith(_$ProjectListEntityImpl value,
          $Res Function(_$ProjectListEntityImpl) then) =
      __$$ProjectListEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int projectId, String projectName, String location, String status});
}

/// @nodoc
class __$$ProjectListEntityImplCopyWithImpl<$Res>
    extends _$ProjectListEntityCopyWithImpl<$Res, _$ProjectListEntityImpl>
    implements _$$ProjectListEntityImplCopyWith<$Res> {
  __$$ProjectListEntityImplCopyWithImpl(_$ProjectListEntityImpl _value,
      $Res Function(_$ProjectListEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectId = null,
    Object? projectName = null,
    Object? location = null,
    Object? status = null,
  }) {
    return _then(_$ProjectListEntityImpl(
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as int,
      projectName: null == projectName
          ? _value.projectName
          : projectName // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProjectListEntityImpl implements _ProjectListEntity {
  const _$ProjectListEntityImpl(
      {required this.projectId,
      required this.projectName,
      required this.location,
      required this.status});

  @override
  final int projectId;
  @override
  final String projectName;
  @override
  final String location;
  @override
  final String status;

  @override
  String toString() {
    return 'ProjectListEntity(projectId: $projectId, projectName: $projectName, location: $location, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectListEntityImpl &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.projectName, projectName) ||
                other.projectName == projectName) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, projectId, projectName, location, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectListEntityImplCopyWith<_$ProjectListEntityImpl> get copyWith =>
      __$$ProjectListEntityImplCopyWithImpl<_$ProjectListEntityImpl>(
          this, _$identity);
}

abstract class _ProjectListEntity implements ProjectListEntity {
  const factory _ProjectListEntity(
      {required final int projectId,
      required final String projectName,
      required final String location,
      required final String status}) = _$ProjectListEntityImpl;

  @override
  int get projectId;
  @override
  String get projectName;
  @override
  String get location;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$ProjectListEntityImplCopyWith<_$ProjectListEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
