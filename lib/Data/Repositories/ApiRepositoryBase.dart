import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:nsmtu_mobile/Data/Utility/CustomApiException/BadRequestException.dart';
import 'package:nsmtu_mobile/Data/Utility/CustomApiException/FetchDataException.dart';
import 'package:nsmtu_mobile/Data/Utility/CustomApiException/UnauthorisedException.dart';
import 'IRepositoryBase.dart';

abstract class ApiRepositoryBase<T> extends IRepositoryBase<T> {
  Future<Map> get(String url, {Map<String, String>? headers})async =>
       _response(await http.get(Uri.parse(url), headers: headers));

  Future<Map> post(String url, {Map<String, String>? headers, Object? body, Encoding? encoding})async =>
       _response(await http.post(Uri.parse(url), headers: headers,body: body,encoding: encoding));
  Map<String,dynamic> _response(http.Response response){
    switch(response.statusCode){
      case 200:
        var resJson=jsonDecode(response.body);
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
