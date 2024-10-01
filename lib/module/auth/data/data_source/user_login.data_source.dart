import "dart:convert";
import "package:flutter/material.dart";
import "package:injectable/injectable.dart";
import "../../../../util/http_client/http_client.util.dart";
import "../../../../util/http_client/http_client_response.dart";
import "../model/user/user.model.dart";
import "../model/user_credential/user_login_credential.model.dart";

// Add @injectable to register in locator.config.dart
@injectable
class UserLoginDataSource {
  UserLoginDataSource({
    required HttpClientUtil httpClientUtil,
  }) : _httpClientUtil = httpClientUtil;

  final HttpClientUtil _httpClientUtil;
//jamy-develop-03.1-Notification-List

  Future<UserModel> call({
    // Use UserLoginCredentialModel (Model) for sending data to back-end (API)
    required UserLoginCredentialModel userLoginCredentialModel,
  }) async {
    // Use/We _httpClientUtil.post function to send data to the server or back-end (API)
    final HttpClientResponse response = await _httpClientUtil.post(
      /* 
        the data needs to be serialized into a format that can be transmitted over HTTP, 
        usually JSON. The toJson() method takes the fields of the UserLoginCredentialModel 
        (like email, password, etc.) and converts them into a JSON structure. 
        In addition, use "data" property of .post() to imbed the userLoginCredentialModel
      */
      data: userLoginCredentialModel.toJson(),
      // The "endpoint" indicates the specific API route or action on the server
      //where the login credentials are being sent for user authentication.
      endpoint: "/inventi/securitychecklistv2/login",
    );
    debugPrint("Auth Data Source: RESPONSE BODY");
    debugPrint(jsonEncode(response.body));

    //Returns the response body of userLoginCredentialModel and send it to UserModel
    return UserModel.fromJson(response.body);
  }
}
