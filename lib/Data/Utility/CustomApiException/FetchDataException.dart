import 'package:nsmtu_mobile/Data/Utility/CustomApiException/Exceptions.dart';

class FetchDataException extends CustomApiException{
  FetchDataException(message):super(message,"Failed get data");
}