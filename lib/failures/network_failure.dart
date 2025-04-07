import 'package:exception_type/i_errors/i_failure.dart';

class NetworkFailure extends IFailure {
  final NetworkFailureType networkFailureType;

  const NetworkFailure(this.networkFailureType);

  @override
  List<Object> get props => <Object>[networkFailureType];
}

enum NetworkFailureType {
  network,
  sessionDenied,
  noInternet,
  pageNotFound404,

  badGateWay502,
  serviceUnavailable503,
  virusContent,
  permissionDenied,
}
