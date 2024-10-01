import "config/app_config.dart";
import "main.dart";

void main() {
  AppConfig().setConfig(
    apiUrl: "api.intuition.ph",
    flavor: "qa",
  );
  mainCommon();
}
