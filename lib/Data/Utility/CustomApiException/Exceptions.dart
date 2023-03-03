class CustomApiException implements Exception{
  final dynamic _message;
  final dynamic _prefix;
  @override
  String toString() {
    // TODO: implement toString
    return "$_prefix $_message";
  }
  CustomApiException(this._message,this._prefix);
}
