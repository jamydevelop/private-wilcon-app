// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserLoginModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  @JsonKey(name: "userId")
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "role")
  String get role => throw _privateConstructorUsedError;
  @JsonKey(name: "role_ids")
  List<String> get roleIdList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "userId") int userId,
      @JsonKey(name: "role") String role,
      @JsonKey(name: "role_ids") List<String> roleIdList});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? role = null,
    Object? roleIdList = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      roleIdList: null == roleIdList
          ? _value.roleIdList
          : roleIdList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserLoginModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserLoginModelImplCopyWith(_$UserLoginModelImpl value,
          $Res Function(_$UserLoginModelImpl) then) =
      __$$UserLoginModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "userId") int userId,
      @JsonKey(name: "role") String role,
      @JsonKey(name: "role_ids") List<String> roleIdList});
}

/// @nodoc
class __$$UserLoginModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserLoginModelImpl>
    implements _$$UserLoginModelImplCopyWith<$Res> {
  __$$UserLoginModelImplCopyWithImpl(
      _$UserLoginModelImpl _value, $Res Function(_$UserLoginModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? role = null,
    Object? roleIdList = null,
  }) {
    return _then(_$UserLoginModelImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      roleIdList: null == roleIdList
          ? _value._roleIdList
          : roleIdList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserLoginModelImpl implements _UserLoginModel {
  const _$UserLoginModelImpl(
      {@JsonKey(name: "userId") required this.userId,
      @JsonKey(name: "role") required this.role,
      @JsonKey(name: "role_ids") required final List<String> roleIdList})
      : _roleIdList = roleIdList;

  factory _$UserLoginModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserLoginModelImplFromJson(json);

  @override
  @JsonKey(name: "userId")
  final int userId;
  @override
  @JsonKey(name: "role")
  final String role;
  final List<String> _roleIdList;
  @override
  @JsonKey(name: "role_ids")
  List<String> get roleIdList {
    if (_roleIdList is EqualUnmodifiableListView) return _roleIdList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roleIdList);
  }

  @override
  String toString() {
    return 'UserModel(userId: $userId, role: $role, roleIdList: $roleIdList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoginModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.role, role) || other.role == role) &&
            const DeepCollectionEquality()
                .equals(other._roleIdList, _roleIdList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, role,
      const DeepCollectionEquality().hash(_roleIdList));

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

abstract class _UserLoginModel implements UserModel {
  const factory _UserLoginModel(
          {@JsonKey(name: "userId") required final int userId,
          @JsonKey(name: "role") required final String role,
          @JsonKey(name: "role_ids") required final List<String> roleIdList}) =
      _$UserLoginModelImpl;

  factory _UserLoginModel.fromJson(Map<String, dynamic> json) =
      _$UserLoginModelImpl.fromJson;

  @override
  @JsonKey(name: "userId")
  int get userId;
  @override
  @JsonKey(name: "role")
  String get role;
  @override
  @JsonKey(name: "role_ids")
  List<String> get roleIdList;
  @override
  @JsonKey(ignore: true)
  _$$UserLoginModelImplCopyWith<_$UserLoginModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
