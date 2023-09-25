import 'package:dartz/dartz.dart';
import 'package:flutter_mini_projet_omar/src/app/core/error/server_request.dart';
import 'package:flutter_mini_projet_omar/src/app/services/network_service.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService extends GetxService {
  Future<Either<StatusRequest, Map>> getData(String linkurl, Map data) async {
    if (await networkService()) {
      var response = await http.post(Uri.parse(linkurl), body: data);
      print(response.statusCode);
      if (response.statusCode == 200 || response.statusCode == 201) {
        Map responsebody = jsonDecode(response.body);
        print(responsebody);
        return Right(responsebody);
      } else {
        return const Left(StatusRequest.serverFailure);
      }
    } else {
      return const Left(StatusRequest.offlineFailure);
    }
  }
}
