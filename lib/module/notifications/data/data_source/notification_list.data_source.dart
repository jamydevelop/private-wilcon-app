import "package:flutter/material.dart";
import "package:injectable/injectable.dart";
import "../../../../util/http_client/http_client.util.dart";
import "../../../../util/http_client/http_client_response.dart";
import "../model/notification_list.model.dart";

@injectable
class GetNotificationListDataSource {
  GetNotificationListDataSource({
    required HttpClientUtil httpClientUtil,
  }) : _httpClientUtil = httpClientUtil;

  final HttpClientUtil _httpClientUtil;
//Notif 02
  Future<List<NotificationListModel>> call(int userId, int page) async {
    late HttpClientResponse response;

    response = await _httpClientUtil.get(
        endpoint: "/inventi/securitychecklistv2/notification-list",
        queryParameters: <String, dynamic>{
          "userId": userId.toString(),
          "page": page.toString()
        });

    final List<NotificationListModel> list = <NotificationListModel>[];

    for (final dynamic model in response.body["payload"] as List<dynamic>) {
      final Map<String, dynamic> map = model as Map<String, dynamic>;
      list.add(NotificationListModel.fromJson(map));
    }
    debugPrint("Notif List *****************************************");
    return list;
  }
}
