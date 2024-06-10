import 'package:exception_helper/exception_helper.dart';
import 'package:flutter_test/flutter_test.dart';



void main() {
  test('should return correct message for email-already-in-use', () {
    final exception = FirebaseAuthExceptionHelper('email-already-in-use');
    expect(exception.message, 'The email address is already registered. Please use a different email.');
  });
}
