import 'package:exception_type/constants/server_error_constants.dart';
import 'package:exception_type/failures/location_error.dart';

String getLocationErrorMsg(LocationErrorType locationErrorType) {
  switch (locationErrorType) {
    case LocationErrorType.permissionDenied:
      return ErrorConstants.permissionDenied;
    case LocationErrorType.permissionDeniedForever:
      return ErrorConstants.permissionDeniedForever;

    }
}
