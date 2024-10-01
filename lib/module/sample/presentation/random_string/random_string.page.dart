import "package:easy_localization/easy_localization.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:get_it/get_it.dart";

import "../../domain/bloc/get_random_string/get_random_string_cubit.dart";
import "widget/random_string_error.widget.dart";
import "widget/random_string_fulfilled.widget.dart";
import "widget/random_string_initial.widget.dart";
import "widget/random_string_loading.widget.dart";

class RandomStringPage extends StatelessWidget {
  RandomStringPage({super.key});

  final GetRandomStringCubit _getRandomStringCubit =
      GetIt.I<GetRandomStringCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GetRandomStringCubit>(
      create: (_) => _getRandomStringCubit,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(context.tr("randomString.title")),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              BlocBuilder<GetRandomStringCubit, GetRandomStringState>(
                builder: (BuildContext context, GetRandomStringState state) =>
                    state.when(
                  initial: () => const RandomStringInitialWidget(),
                  loading: () => const RandomStringLoadingWidget(),
                  error: () => const RandomStringErrorWidget(),
                  fulfilled: (String randomString) =>
                      RandomStringFulfilledWidget(randomString: randomString),
                ),
              ),
              FilledButton(
                onPressed: handleGenerateButtonPressed,
                child: Text(context.tr("randomString.generateButton")),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> handleGenerateButtonPressed() async {
    _getRandomStringCubit.fetch();
  }
}
