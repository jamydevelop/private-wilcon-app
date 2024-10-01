import "package:freezed_annotation/freezed_annotation.dart";

import "../../remote_error_response/remote_error_response.dart";
import "../exception.dart";

part "remote.exception.freezed.dart";

@freezed
class RemoteException extends Exception with _$RemoteException {
  const factory RemoteException({
    required int statusCode,
    required RemoteErrorResponse body,
  }) = _RemoteException;
}
