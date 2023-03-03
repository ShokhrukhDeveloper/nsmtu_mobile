import 'package:nsmtu_mobile/Data/Utility/CustomApiException/Exceptions.dart';

class InvalidInputException extends CustomApiException{
  InvalidInputException(message):super(message,"Invalid input\n");
}