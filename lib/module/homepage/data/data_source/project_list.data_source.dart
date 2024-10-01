import "dart:convert";

import "package:flutter/material.dart";
import "package:injectable/injectable.dart";

import "../../../../util/http_client/http_client.util.dart";
import "../../../../util/http_client/http_client_response.dart";
import "../model/project_list.model.dart";

@injectable
class ProjectListDataSource {
  ProjectListDataSource({
    required HttpClientUtil httpClientUtil,
  }) : _httpClientUtil = httpClientUtil;

  final HttpClientUtil _httpClientUtil;

  Future<ProjectListModel> call() async {
    late HttpClientResponse response;

    response = await _httpClientUtil.get(
        endpoint: "/inventi/securitychecklistv2/total-notification");

    //print("Total");
    //print("***Notification Total***");
    debugPrint(jsonEncode(response.body));
    //print(jsonEncode(response.body));
    //debugPrint("Notif Total *****************************************");
    return ProjectListModel.fromJson(response.body);
  }
}
