import "package:freezed_annotation/freezed_annotation.dart";

part "remote_error_response.freezed.dart";
part "remote_error_response.g.dart";

@freezed
class RemoteErrorResponse with _$RemoteErrorResponse {
  const factory RemoteErrorResponse({
    required int errorCode,
    Map<String, dynamic>? errorMessage,
    Map<String, dynamic>? errorDescription,
  }) = _RemoteErrorResponse;

  factory RemoteErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$$RemoteErrorResponseImplFromJson(json);
}
