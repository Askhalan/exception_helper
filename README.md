


<div align="center">

[![YouTube Badge](https://img.shields.io/badge/-YouTube-EA3223?style=for-the-badge&logo=youtube&logoColor=white)]([https://www.youtube.com/waterydesert](https://youtube.com/@jinntechive?si=z5smWbVs4sDfLonj))
[![Twitter Badge](https://img.shields.io/badge/-Twitter-198CD8?style=for-the-badge&logo=twitter&logoColor=white)](https://x.com/Askhalan)
</div>

<hr>

# Exception Handler

Exception Handler is a Dart package that provides a simple and flexible way to handle exceptions in your Dart/Flutter applications. It allows users to specify which types of exceptions they want to handle and provides customizable error messages for different exception scenarios.

## Features

- Handle exceptions easily with a single function call.
- Specify which types of exceptions to handle.
- Customize error messages for different exception scenarios.
- Lightweight and easy to integrate into your projects.

## Installation

To use Exception Handler in your Dart/Flutter project, add the following line to your `pubspec.yaml` file:

```yaml
dependencies:
  exception_handler: ^1.0.0
```

Then, run `dart pub get` to install the package.

## Usage

Import the package into your Dart file:

```dart
import 'package:exception_handler/exception_handler.dart';
```

Use the `handleExceptions` function to handle exceptions in your code:

```dart
void main() async {
  try {
    await ExceptionHandler.handleExceptions(
      () async {
        // Code that might cause exceptions
        await signinWithGoogle();
      },
      needFirebaseAuthException: true, // Specify which exceptions to handle
      needFirebaseException: false, // Specify other exceptions to handle
    );
  } catch (e) {
    // Handle the exceptions thrown by the handleExceptions function
    print('An exception occurred: $e');
  }
}
```

## Customization

You can customize the behavior of the `handleExceptions` function by specifying which types of exceptions to handle and providing custom error messages for different exception scenarios.

Example:

```dart
// Specify custom error messages for different exception types
class JFirebaseAuthException implements Exception {
  final String message;

  JFirebaseAuthException(this.message);
}

// Use the handleExceptions function with custom exception handling logic
await ExceptionHandler.handleExceptions(
  () async {
    // Code that might cause exceptions
  },
  needFirebaseAuthException: true, // Specify which exceptions to handle
);
```

## Contributing

Contributions to Exception Handler are welcome! If you find any bugs or have suggestions for improvements, please open an issue on the GitHub repository.

## License

This package is distributed under the GNU License. See the LICENSE file for more information.

---

Feel free to customize this template further to better suit your package's specific features and requirements.
