import "package:freezed_annotation/freezed_annotation.dart";

part "http_client_response.freezed.dart";

@freezed
class HttpClientResponse with _$HttpClientResponse {
  const factory HttpClientResponse({
    required int statusCode,
    required Map<String, dynamic> body,
    required Map<String, dynamic> headers,
  }) = _HttpClientResponse;
}
