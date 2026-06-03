import 'package:flutter_test/flutter_test.dart';
import 'package:unit_tests_app/providers/counter_provider.dart';

void main() {
  late CounterProvider provider;

  setUp(() {
    provider = CounterProvider();
  });

  test('Initial value is 0', () {
    expect(provider.count, 0);
  });

  test('Increment works correctly', () {
    provider.increment();

    expect(provider.count, 1);
  });

  test('Decrement works correctly', () {
    provider.decrement();

    expect(provider.count, -1);
  });

  test('Reset works correctly', () {
    provider.increment();
    provider.increment();

    provider.reset();

    expect(provider.count, 0);
  });
}