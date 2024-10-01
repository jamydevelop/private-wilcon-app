import "package:get_it/get_it.dart";
import "package:injectable/injectable.dart";
import "locator.config.dart";

final GetIt getIt = GetIt.instance;

@injectableInit
void configureDependencies() => getIt.init();
