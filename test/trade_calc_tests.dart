import 'package:flutter_test/flutter_test.dart';
import 'package:tradecalc/main.dart';

void main(){
  MyAppState myObject = MyAppState();

  group('Tests for calculateProfit', () {
    test('Test 1 for calculateProfit', () {

      myObject.calculateTarget('10000', '1:2', '10');
      expect(myObject.capitalAfterProfitToString, '12000.0');
    });

    test('Test 2 for calculateProfit', () {
      MyAppState myObject = MyAppState();

      myObject.calculateTarget('12000', '1:2', '10');
      expect(myObject.capitalAfterProfitToString, '14400.0');
    });

    test('Test 3 for calculateProfit', () {
      MyAppState myObject = MyAppState();

      myObject.calculateTarget('124566', '1:3', '14');
      expect(myObject.capitalAfterProfitToString, '2 Lakhs');
    });
  });
  
  group('Tests for clearing input', () {
    test('clearing input', () {
      String input = myObject.clearInput();
      expect(input, '');
    });
  });
}