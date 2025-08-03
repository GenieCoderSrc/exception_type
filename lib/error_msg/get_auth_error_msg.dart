import 'package:exception_type/constants/auth_failure_messages.dart';
import 'package:exception_type/failures/auth_failure.dart';

// String getAuthErrorMsg(AuthFailureType authErrorType) {
//   switch (authErrorType) {
//     case AuthFailureType.networkRequestFailed:
//       return ErrorConstants.noNetwork;
//     case AuthFailureType.unknown:
//     case AuthFailureType.unauthorised:
//       return ErrorConstants.somethingWentWrong;
//     case AuthFailureType.permissionDenied:
//       return ErrorConstants.permissionDenied;
//     default:
//       return ErrorConstants.wrongUsernamePassword;
//   }
// }

String mapAuthFailureToMessage(AuthFailureType failureType) {
  switch (failureType) {
    case AuthFailureType.unknown:
      return AuthFailureMessages.unknown;
    case AuthFailureType.unauthorised:
      return AuthFailureMessages.unauthorised;
    case AuthFailureType.permissionDenied:
      return AuthFailureMessages.permissionDenied;
    case AuthFailureType.networkRequestFailed:
      return AuthFailureMessages.networkRequestFailed;
    case AuthFailureType.requiresRecentLogin:
      return AuthFailureMessages.requiresRecentLogin;
    case AuthFailureType.weakPassword:
      return AuthFailureMessages.weakPassword;
    case AuthFailureType.emailAlreadyInUse:
      return AuthFailureMessages.emailAlreadyInUse;
    case AuthFailureType.phoneAlreadyInUse:
      return AuthFailureMessages.phoneAlreadyInUse;
    case AuthFailureType.userNotFound:
      return AuthFailureMessages.userNotFound;
    case AuthFailureType.wrongPassword:
      return AuthFailureMessages.wrongPassword;
    case AuthFailureType.wrongUsernamePassword:
      return AuthFailureMessages.wrongUsernamePassword;
    case AuthFailureType.tooManyRequests:
      return AuthFailureMessages.tooManyRequests;
    case AuthFailureType.credentialAlreadyInUse:
      return AuthFailureMessages.credentialAlreadyInUse;
    case AuthFailureType.invalidVerificationCode:
      return AuthFailureMessages.invalidVerificationCode;
  }
}
