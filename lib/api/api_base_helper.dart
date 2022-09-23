import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import 'app_exception.dart';

class ApiBaseHelper {
  Future<dynamic> get(String url) async {
    var responseJson;
    try {
      final response = await http.get(Uri.parse(url));
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  Future<dynamic> post(String url, dynamic body) async {
    if (kDebugMode) {
      print('Api Post, url $url');
    }
    var responseJson;
    try {
      final response = await http.post(Uri.parse(url), body: body);
      responseJson = _returnResponse(response);
    } on SocketException {
      if (kDebugMode) {
        print('No net');
      }
      throw FetchDataException('No Internet connection');
    }
    if (kDebugMode) {
      print('api post.');
    }
    return responseJson;
  }

  Future<dynamic> put(String url, dynamic body) async {
    if (kDebugMode) {
      print('Api Put, url $url');
    }
    var responseJson;
    try {
      final response = await http.put(Uri.parse(url), body: body);
      responseJson = _returnResponse(response);
    } on SocketException {
      if (kDebugMode) {
        print('No net');
      }
      throw FetchDataException('No Internet connection');
    }
    if (kDebugMode) {
      print('api put.');
      print(responseJson.toString());
    }
    return responseJson;
  }

  Future<dynamic> delete(String url) async {
    if (kDebugMode) {
      print('Api delete, url $url');
    }
    var apiResponse;
    try {
      final response = await http.delete(Uri.parse(url));
      apiResponse = _returnResponse(response);
    } on SocketException {
      if (kDebugMode) {
        print('No net');
      }
      throw FetchDataException('No Internet connection');
    }
    if (kDebugMode) {
      print('api delete.');
    }
    return apiResponse;
  }
}

dynamic _returnResponse(http.Response response) {
  switch (response.statusCode) {
    case 200:
      var responseJson = json.decode(response.body.toString());
      if (kDebugMode) {
        print(responseJson);
      }
      return responseJson;
    case 400:
      throw BadRequestException(response.body.toString());
    case 401:
    case 403:
      throw UnauthorisedException(response.body.toString());
    case 500:
    default:
      throw FetchDataException(
          'Error occurred while Communication with Server with StatusCode : ${response.statusCode}');
  }
}
