import 'package:flutter_test/flutter_test.dart';
import 'package:unit_tests_app/models/user_model.dart';

void main() {
  group('UserModel Tests', () {
    test('toJson returns correct map', () {
      final user = UserModel(
        name: 'Ali',
        age: 20,
      );

      expect(
        user.toJson(),
        {
          'name': 'Ali',
          'age': 20,
        },
      );
    });

    test('fromJson creates correct object', () {
      final json = {
        'name': 'Ahmed',
        'age': 25,
      };

      final user = UserModel.fromJson(json);

      expect(user.name, 'Ahmed');
      expect(user.age, 25);
    });
  });
}