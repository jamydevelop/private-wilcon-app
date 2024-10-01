import "dart:convert";

import "package:flutter/material.dart";
import "package:http/http.dart" as http;
import "package:injectable/injectable.dart";

import "../../app/exception/remote/remote.exception.dart";
import "../../app/remote_error_response/remote_error_response.dart";
import "../../config/app_config.dart";
import "http_client_response.dart";

@injectable
class HttpClientUtil {
  HttpClientUtil({
    required http.Client httpClient,
  }) : _httpClient = httpClient;

  final http.Client _httpClient;

  Future<HttpClientResponse> get({
    required String endpoint,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) async {
    final Uri url = Uri.https(
      AppConfig().apiUrl,
      endpoint,
      queryParameters,
    );

    final http.Response response = await _httpClient.get(
      url,
      headers: headers,
    );

    final dynamic body = json.decode(response.body);
    dynamic payload = body;

    if (body is List) {
      payload = <String, dynamic>{"payload": body};
    }

    debugPrint(response.statusCode.toString());
    if (response.statusCode < 400 && response.statusCode > 499) {
      throw RemoteException(
        statusCode: response.statusCode,
        body: RemoteErrorResponse.fromJson(payload),
      );
    }

    return HttpClientResponse(
      body: payload,
      headers: response.headers,
      statusCode: response.statusCode,
    );
  }

  Future<HttpClientResponse> post({
    required String endpoint,
    Map<String, String>? headers,
    Map<String, dynamic>? data,
  }) async {
    final Uri url = Uri.https(
      AppConfig().apiUrl,
      endpoint,
    );

    final http.Response response =
        await _httpClient.post(url, headers: headers, body: data);

    final Map<String, dynamic> body =
        jsonDecode(response.body) as Map<String, dynamic>;

    if (response.statusCode < 400 && response.statusCode > 499) {
      throw RemoteException(
        statusCode: response.statusCode,
        body: RemoteErrorResponse.fromJson(body),
      );
    }

    return HttpClientResponse(
      statusCode: response.statusCode,
      body: body,
      headers: response.headers,
    );
  }
}
