import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:nsmtu_mobile/Data/Utility/CustomApiException/BadRequestException.dart';
import 'package:nsmtu_mobile/Data/Utility/CustomApiException/FetchDataException.dart';
import 'package:nsmtu_mobile/Data/Utility/CustomApiException/UnauthorisedException.dart';
import 'IRepositoryBase.dart';

abstract class ApiRepositoryBase extends IRepositoryBase {
  Future<String> get(String url, {Map<String, String>? headers})async =>
       _response(await http.get(Uri.parse(url), headers: headers));

  Future<String> post(String url, {Map<String, String>? headers, Object? body, Encoding? encoding})async =>

      _response(await http.post(Uri.parse(url), headers: headers,body: body,encoding: encoding));
  String _response(http.Response response){

    debugPrint(response.statusCode.toString());
    debugPrint(response.body);

    switch(response.statusCode){
      case 200:
        var resJson=response.body;
        return resJson;
      case 400:
        throw BadRequestException(response.body);
      case 401:
      case 403:
        throw UnauthorisedException(response.body);
      case 500:
      default:
        throw FetchDataException(response.body);
    }
  }


}
