import 'dart:math';

import 'package:code_katas/src/roman_numerals/roman_numerals.dart';
import 'package:test/test.dart';

void main(){
  test('Roman Numerals', (){
    expect(toRomanNumerals(0), '');
    expect(toRomanNumerals(1), 'I');
    expect(toRomanNumerals(2), 'II');
    expect(toRomanNumerals(3), 'III');
    expect(toRomanNumerals(4), 'IV');
    expect(toRomanNumerals(5), 'V');
    expect(toRomanNumerals(6), 'VI');
    expect(toRomanNumerals(7), 'VII');
    expect(toRomanNumerals(8), 'VIII');
    expect(toRomanNumerals(9), 'IX');
    expect(toRomanNumerals(10), 'X');
    expect(toRomanNumerals(11), 'XI');
    expect(toRomanNumerals(14), 'XIV');
    expect(toRomanNumerals(29), 'XXIX');
    expect(toRomanNumerals(50), 'L');
    expect(toRomanNumerals(40), 'XL');
    expect(toRomanNumerals(90), 'XC');
    expect(toRomanNumerals(100), 'C');
    expect(toRomanNumerals(1912),'MCMXII');
    expect(toRomanNumerals(1776),'MDCCLXXVI');
  });
}