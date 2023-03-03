
import 'package:nsmtu_mobile/Data/Utility/CustomApiException/Exceptions.dart';

class BadRequestException extends CustomApiException{
  BadRequestException(message):super(message,"Invalid request\n");
}