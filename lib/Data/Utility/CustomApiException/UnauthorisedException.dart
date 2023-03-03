
import 'package:nsmtu_mobile/Data/Utility/CustomApiException/Exceptions.dart';

class UnauthorisedException extends CustomApiException{
  UnauthorisedException(message):super(message,"Unauthorised:\n");
}