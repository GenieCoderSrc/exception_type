import 'package:exception_type/i_errors/i_failure.dart';

class NotificationFailure extends IFailure {
  final NotificationFailureType networkFailureType;

  const NotificationFailure(this.networkFailureType);

  @override
  List<Object> get props => <Object>[networkFailureType];
}

enum NotificationFailureType {
  permissionDenied,
  permissionDeniedForever,
  invalidToken,
  noInternet,
}
