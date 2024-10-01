class AppConfig {
  factory AppConfig() {
    return _instance;
  }

  AppConfig._internal();
  static final AppConfig _instance = AppConfig._internal();

  String apiUrl = "";
  String flavor = "";

  void setConfig({
    required String apiUrl,
    required String flavor,
  }) {
    this.apiUrl = apiUrl;
    this.flavor = flavor;
  }
}
