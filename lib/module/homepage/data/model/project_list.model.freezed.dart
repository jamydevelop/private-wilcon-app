// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_list.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProjectListModel _$ProjectListModelFromJson(Map<String, dynamic> json) {
  return _ProjectListModel.fromJson(json);
}

/// @nodoc
mixin _$ProjectListModel {
  @JsonKey(name: "projectId")
  int get projectId => throw _privateConstructorUsedError;
  @JsonKey(name: "projectName")
  String get projectName => throw _privateConstructorUsedError;
  @JsonKey(name: "location")
  String get location => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectListModelCopyWith<ProjectListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectListModelCopyWith<$Res> {
  factory $ProjectListModelCopyWith(
          ProjectListModel value, $Res Function(ProjectListModel) then) =
      _$ProjectListModelCopyWithImpl<$Res, ProjectListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "projectId") int projectId,
      @JsonKey(name: "projectName") String projectName,
      @JsonKey(name: "location") String location,
      @JsonKey(name: "status") String status});
}

/// @nodoc
class _$ProjectListModelCopyWithImpl<$Res, $Val extends ProjectListModel>
    implements $ProjectListModelCopyWith<$Res> {
  _$ProjectListModelCopyWithImpl(this._value, this._then);

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
abstract class _$$ProjectListModelImplCopyWith<$Res>
    implements $ProjectListModelCopyWith<$Res> {
  factory _$$ProjectListModelImplCopyWith(_$ProjectListModelImpl value,
          $Res Function(_$ProjectListModelImpl) then) =
      __$$ProjectListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "projectId") int projectId,
      @JsonKey(name: "projectName") String projectName,
      @JsonKey(name: "location") String location,
      @JsonKey(name: "status") String status});
}

/// @nodoc
class __$$ProjectListModelImplCopyWithImpl<$Res>
    extends _$ProjectListModelCopyWithImpl<$Res, _$ProjectListModelImpl>
    implements _$$ProjectListModelImplCopyWith<$Res> {
  __$$ProjectListModelImplCopyWithImpl(_$ProjectListModelImpl _value,
      $Res Function(_$ProjectListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectId = null,
    Object? projectName = null,
    Object? location = null,
    Object? status = null,
  }) {
    return _then(_$ProjectListModelImpl(
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
@JsonSerializable()
class _$ProjectListModelImpl implements _ProjectListModel {
  const _$ProjectListModelImpl(
      {@JsonKey(name: "projectId") required this.projectId,
      @JsonKey(name: "projectName") required this.projectName,
      @JsonKey(name: "location") required this.location,
      @JsonKey(name: "status") required this.status});

  factory _$ProjectListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectListModelImplFromJson(json);

  @override
  @JsonKey(name: "projectId")
  final int projectId;
  @override
  @JsonKey(name: "projectName")
  final String projectName;
  @override
  @JsonKey(name: "location")
  final String location;
  @override
  @JsonKey(name: "status")
  final String status;

  @override
  String toString() {
    return 'ProjectListModel(projectId: $projectId, projectName: $projectName, location: $location, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectListModelImpl &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.projectName, projectName) ||
                other.projectName == projectName) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, projectId, projectName, location, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectListModelImplCopyWith<_$ProjectListModelImpl> get copyWith =>
      __$$ProjectListModelImplCopyWithImpl<_$ProjectListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectListModelImplToJson(
      this,
    );
  }
}

abstract class _ProjectListModel implements ProjectListModel {
  const factory _ProjectListModel(
          {@JsonKey(name: "projectId") required final int projectId,
          @JsonKey(name: "projectName") required final String projectName,
          @JsonKey(name: "location") required final String location,
          @JsonKey(name: "status") required final String status}) =
      _$ProjectListModelImpl;

  factory _ProjectListModel.fromJson(Map<String, dynamic> json) =
      _$ProjectListModelImpl.fromJson;

  @override
  @JsonKey(name: "projectId")
  int get projectId;
  @override
  @JsonKey(name: "projectName")
  String get projectName;
  @override
  @JsonKey(name: "location")
  String get location;
  @override
  @JsonKey(name: "status")
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$ProjectListModelImplCopyWith<_$ProjectListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
