import "config/app_config.dart";
import "main.dart";

void main() {
  AppConfig().setConfig(
    apiUrl: "https://staging-api.inventi.asia",
    flavor: "staging",
  );
  mainCommon();
}
