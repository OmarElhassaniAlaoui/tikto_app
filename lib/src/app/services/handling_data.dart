import 'package:flutter_mini_projet_omar/src/app/core/error/server_request.dart';

handlingData(response) {
  if (response is StatusRequest) {
    return response; 
  } else {
    return StatusRequest.success;
  }
}