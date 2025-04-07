import '../i_errors/i_failure.dart';

class AuthFailure extends IFailure {
  final AuthFailureType failureType;

  const AuthFailure(this.failureType);

  @override
  List<Object> get props => <Object>[failureType];
}

enum AuthFailureType {
  unknown,
  unauthorised,
  permissionDenied,
  networkRequestFailed,
  requiresRecentLogin,
  weakPassword,
  emailAlreadyInUse,
  phoneAlreadyInUse,
  userNotFound,
  wrongPassword,
  wrongUsernamePassword,
  tooManyRequests,
  credentialAlreadyInUse,
  invalidVerificationCode,
}
