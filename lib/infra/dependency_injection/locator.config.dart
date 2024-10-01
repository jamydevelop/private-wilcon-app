// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;
import 'package:wilcon_checklist/infra/dependency_injection/register_dependencies.dart'
    as _i27;
import 'package:wilcon_checklist/module/auth/data/data_source/user_login.data_source.dart'
    as _i9;
import 'package:wilcon_checklist/module/auth/data/mapper/failure_login.mapper.dart'
    as _i5;
import 'package:wilcon_checklist/module/auth/data/repository/user_login_repository.dart'
    as _i17;
import 'package:wilcon_checklist/module/auth/domain/cubit/user_login_cubit.dart'
    as _i25;
import 'package:wilcon_checklist/module/auth/domain/use_case/user_login.use_case.dart'
    as _i24;
import 'package:wilcon_checklist/module/homepage/data/data_source/project_list.data_source.dart'
    as _i8;
import 'package:wilcon_checklist/module/homepage/data/repository/project_list.repository.dart'
    as _i16;
import 'package:wilcon_checklist/module/homepage/domain/use_case/project_list.use_case.dart'
    as _i23;
import 'package:wilcon_checklist/module/notifications/data/data_source/notification_list.data_source.dart'
    as _i11;
import 'package:wilcon_checklist/module/notifications/data/data_source/notification_total.data_source.dart'
    as _i12;
import 'package:wilcon_checklist/module/notifications/data/mapper/failure_notification_list.mapper.dart'
    as _i6;
import 'package:wilcon_checklist/module/notifications/data/repository/notification_list.repository.dart'
    as _i18;
import 'package:wilcon_checklist/module/notifications/data/repository/notification_total.repository.dart'
    as _i15;
import 'package:wilcon_checklist/module/notifications/domain/cubit/notification_list/notification_list_cubit.dart'
    as _i26;
import 'package:wilcon_checklist/module/notifications/domain/cubit/notification_total/notification_total_cubit.dart'
    as _i20;
import 'package:wilcon_checklist/module/notifications/domain/use_case/notification_list.use_case.dart'
    as _i21;
import 'package:wilcon_checklist/module/notifications/domain/use_case/notification_total.use_case.dart'
    as _i19;
import 'package:wilcon_checklist/module/sample/data/data_source/get_random_string.data_source.dart'
    as _i10;
import 'package:wilcon_checklist/module/sample/data/repository/get_random_string.repository.dart'
    as _i13;
import 'package:wilcon_checklist/module/sample/domain/bloc/get_random_string/get_random_string_cubit.dart'
    as _i22;
import 'package:wilcon_checklist/module/sample/domain/use_case/get_random_string.use_case.dart'
    as _i14;
import 'package:wilcon_checklist/util/failure_mapper/failure_mapper.util.dart'
    as _i3;
import 'package:wilcon_checklist/util/http_client/http_client.util.dart' as _i7;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerDependency = _$RegisterDependency();
    gh.factory<_i3.FailureMapperUtil>(() => _i3.FailureMapperUtil());
    gh.singleton<_i4.Client>(() => registerDependency.httpClient);
    gh.factory<_i5.FailureLoginMapper>(() =>
        _i5.FailureLoginMapper(failureMapperUtil: gh<_i3.FailureMapperUtil>()));
    gh.factory<_i6.FailureNotificationListMapper>(() =>
        _i6.FailureNotificationListMapper(
            failureMapperUtil: gh<_i3.FailureMapperUtil>()));
    gh.factory<_i7.HttpClientUtil>(
        () => _i7.HttpClientUtil(httpClient: gh<_i4.Client>()));
    gh.factory<_i8.ProjectListDataSource>(() =>
        _i8.ProjectListDataSource(httpClientUtil: gh<_i7.HttpClientUtil>()));
    gh.factory<_i9.UserLoginDataSource>(() =>
        _i9.UserLoginDataSource(httpClientUtil: gh<_i7.HttpClientUtil>()));
    gh.factory<_i10.GetRandomStringDataSource>(() =>
        _i10.GetRandomStringDataSource(
            httpClientUtil: gh<_i7.HttpClientUtil>()));
    gh.factory<_i11.GetNotificationListDataSource>(() =>
        _i11.GetNotificationListDataSource(
            httpClientUtil: gh<_i7.HttpClientUtil>()));
    gh.factory<_i12.NotificationTotalDataSource>(() =>
        _i12.NotificationTotalDataSource(
            httpClientUtil: gh<_i7.HttpClientUtil>()));
    gh.factory<_i13.GetRandomStringRepository>(() =>
        _i13.GetRandomStringRepository(
            getRandomStringDataSource: gh<_i10.GetRandomStringDataSource>()));
    gh.factory<_i14.GetRandomStringUseCase>(() => _i14.GetRandomStringUseCase(
        getRandomStringRepository: gh<_i13.GetRandomStringRepository>()));
    gh.factory<_i15.NotificationTotalRepository>(() =>
        _i15.NotificationTotalRepository(
            getNotificationTotalDataSource:
                gh<_i12.NotificationTotalDataSource>()));
    gh.factory<_i16.ProjectListRepository>(() => _i16.ProjectListRepository(
        getProjectListDataSource: gh<_i8.ProjectListDataSource>()));
    gh.factory<_i17.UserLoginRepository>(() => _i17.UserLoginRepository(
          userLoginDataSource: gh<_i9.UserLoginDataSource>(),
          failureLoginMapper: gh<_i5.FailureLoginMapper>(),
        ));
    gh.factory<_i18.GetNotificationListRepository>(
        () => _i18.GetNotificationListRepository(
              getNotificationListDataSource:
                  gh<_i11.GetNotificationListDataSource>(),
              failureNotificationListMapper:
                  gh<_i6.FailureNotificationListMapper>(),
            ));
    gh.factory<_i19.NotificationTotalUseCase>(() =>
        _i19.NotificationTotalUseCase(
            getNotificationTotalRepository:
                gh<_i15.NotificationTotalRepository>()));
    gh.factory<_i20.NotificationTotalCubit>(() => _i20.NotificationTotalCubit(
        notificationTotalUseCase: gh<_i19.NotificationTotalUseCase>()));
    gh.factory<_i21.NotificationListUseCase>(() => _i21.NotificationListUseCase(
        getNotificationListRepository:
            gh<_i18.GetNotificationListRepository>()));
    gh.factory<_i22.GetRandomStringCubit>(() => _i22.GetRandomStringCubit(
        getRandomStringUseCase: gh<_i14.GetRandomStringUseCase>()));
    gh.factory<_i23.ProjectListUseCase>(() => _i23.ProjectListUseCase(
        getProjectListRepository: gh<_i16.ProjectListRepository>()));
    gh.factory<_i24.UserLoginUseCase>(() => _i24.UserLoginUseCase(
        getUserLoginRepository: gh<_i17.UserLoginRepository>()));
    gh.factory<_i25.UserLoginCubit>(() =>
        _i25.UserLoginCubit(getUserLoginUseCase: gh<_i24.UserLoginUseCase>()));
    gh.factory<_i26.NotificationListCubit>(() => _i26.NotificationListCubit(
        notificationListUseCase: gh<_i21.NotificationListUseCase>()));
    return this;
  }
}

class _$RegisterDependency extends _i27.RegisterDependency {}
