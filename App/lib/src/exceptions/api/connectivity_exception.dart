import 'package:jokes_app/src/exceptions/custom_exception.dart';

class ConnectivityException implements CustomException {
  @override
  final String message = "Nincs internet kapcsolat...";

  @override
  final String code = "connectivity_error";

  @override
  String toString() {
    return message;
  }

  @override
  String toCode() {
    return code;
  }
}
