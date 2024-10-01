import "dart:convert";

import "package:flutter/material.dart";
import "package:injectable/injectable.dart";

import "../../../../util/http_client/http_client.util.dart";
import "../../../../util/http_client/http_client_response.dart";
import "../model/notification_total.model.dart";

@injectable
class NotificationTotalDataSource {
  NotificationTotalDataSource({
    required HttpClientUtil httpClientUtil,
  }) : _httpClientUtil = httpClientUtil;

  final HttpClientUtil _httpClientUtil;
  // Notif 02
  Future<NotificationTotalModel> call(int userId) async {
    late HttpClientResponse response;

    response = await _httpClientUtil.get(
        endpoint: "/inventi/securitychecklistv2/total-notification",
        queryParameters: <String, dynamic>{
          "userId": userId.toString(),
        });

    //print("Total");
    //print("***Notification Total***");
    debugPrint(jsonEncode(response.body));
    //print(jsonEncode(response.body));
    debugPrint("Notif Total *****************************************");
    return NotificationTotalModel.fromJson(response.body);
  }
}
