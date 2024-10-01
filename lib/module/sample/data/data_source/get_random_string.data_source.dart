import "package:injectable/injectable.dart";

import "../../../../util/http_client/http_client.util.dart";
import "../../../../util/http_client/http_client_response.dart";
import "../model/random_string/random_string.model.dart";

@injectable
class GetRandomStringDataSource {
  GetRandomStringDataSource({
    required HttpClientUtil httpClientUtil,
  }) : _httpClientUtil = httpClientUtil;

  final HttpClientUtil _httpClientUtil;

  Future<RandomStringModel> call() async {
    final HttpClientResponse response = await _httpClientUtil.post(
      endpoint: "/",
    );

    return RandomStringModel.fromJson(response.body);
  }
}
