import 'package:flutter_test/flutter_test.dart';
import 'package:unit_tests_app/utils/validators.dart';

void main() {
  group('Validator Tests', () {
    test('Valid Email', () {
      expect(
        Validators.isValidEmail(
          'test@gmail.com',
        ),
        true,
      );
    });

    test('Invalid Email', () {
      expect(
        Validators.isValidEmail(
          'testgmailcom',
        ),
        false,
      );
    });

    test('Valid Password', () {
      expect(
        Validators.isValidPassword(
          '123456',
        ),
        true,
      );
    });

    test('Invalid Password', () {
      expect(
        Validators.isValidPassword(
          '123',
        ),
        false,
      );
    });
  });
}