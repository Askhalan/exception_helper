// Export individual files
import 'package:exception_helper/exception_helper.dart';
import 'package:firebase_auth/firebase_auth.dart';
export 'src/firebase_auth_exceptions.dart';
export 'src/firebase_exceptions.dart';
export 'src/platform_exceptions.dart';
export 'src/format_exceptions.dart';

class ExceptionHandler {
  static Future<void> handleExceptions({
    required Future Function() action,
    bool needFirebaseAuthException = true,
    bool needFirebaseException = true,
    bool needPlatformException = true,
    bool needFormatException = true,
  }) async {
    try {
      await action();
    } on FirebaseAuthException catch (e) {
      if (needFirebaseAuthException) {
        throw FirebaseAuthExceptionHelper(e.code).message;
      }else {
        rethrow; // Rethrow the exception if not handled
      }
    } on FirebaseException catch (e) {
      if (needFirebaseException) {
        throw FirebaseExceptionHelper(e.code).message;
      }else {
        rethrow; 
      }
    } on FormatExceptionHelper catch (_) {
      if (needFormatException) {
        throw const FormatExceptionHelper();
      }else {
        rethrow;
      }
    } on PlatformExceptionHelper catch (e) {
      if (needFormatException) {
        throw PlatformExceptionHelper(e.code).message;
      }else {
        rethrow;
      }
    }
  }
}
