# exception_type

A Dart package providing standardized failure messages and error handling classes for authentication, database operations, API failures, and more.

## Features
- Predefined error messages for various failure scenarios.
- Structured failure handling using custom failure classes.
- Easy mapping of failures to user-friendly messages.

## Installation
Add the following to your `pubspec.yaml`:

```yaml
dependencies:
  exception_type: latest_version
```

Then run:

```sh
dart pub get
```

## Usage

### Importing the package
```dart
import 'package:exception_type/exception_type.dart';
```

### Handling Authentication Failures
```dart
import 'package:exception_type/failures/auth_failure.dart';
import 'package:exception_type/constants/auth_failure_messages.dart';

String handleAuthError(AuthFailureType failureType) {
  switch (failureType) {
    case AuthFailureType.unauthorised:
      return AuthFailureMessages.unauthorised;
    case AuthFailureType.networkRequestFailed:
      return AuthFailureMessages.networkRequestFailed;
    default:
      return AuthFailureMessages.unknown;
  }
}
```

### Handling Database Failures
```dart
import 'package:exception_type/failures/db_failure.dart';
import 'package:exception_type/constants/db_failure_messages.dart';

String handleDbError(DbFailureType failureType) {
  switch (failureType) {
    case DbFailureType.permissionDenied:
      return DbFailureMessages.permissionDenied;
    case DbFailureType.dataNotFound:
      return DbFailureMessages.dataNotFound;
    default:
      return DbFailureMessages.somethingWrong;
  }
}
```

### Mapping Failures to Messages
```dart
import 'package:exception_type/exception_type.dart';

String mapFailureToMessage(IFailure failure) {
  switch (failure.runtimeType) {
    case AuthFailure:
      return handleAuthError((failure as AuthFailure).failureType);
    case DbFailure:
      return handleDbError((failure as DbFailure).failureType);
    default:
      return "An unexpected error occurred.";
  }
}
```

## Contributing
Contributions are welcome! Please open an issue or submit a pull request on [GitHub](https://github.com/GenieCoderSrc/exception_type).

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

#   e x c e p t i o n _ t y p e  
 