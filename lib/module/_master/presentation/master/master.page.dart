import "package:easy_localization/easy_localization.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:get_it/get_it.dart";

import "../../../../infra/router/app_router.dart";
import "../../../auth/domain/cubit/user_login_cubit.dart";
import "../../../notifications/domain/cubit/notification_list/notification_list_cubit.dart";
import "../../../notifications/domain/cubit/notification_total/notification_total_cubit.dart";

class MasterPage extends StatelessWidget {
  const MasterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      // ignore: always_specify_types
      providers: [
        BlocProvider<UserLoginCubit>(
          create: (_) => GetIt.I<UserLoginCubit>(),
        ),
        BlocProvider<NotificationListCubit>(
            create: (_) => GetIt.I<NotificationListCubit>()),
        BlocProvider<NotificationTotalCubit>(
            create: (_) => GetIt.I<NotificationTotalCubit>()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        routerConfig: AppRouter().router,
      ),
    );
  }
}
