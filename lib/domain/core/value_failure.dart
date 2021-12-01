import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'value_failure.freezed.dart';

@freezed
// The value failure of the user interactions 
abstract class ValueFailures with _$ValueFailures{
   const factory ValueFailures.emptyValue({required String msg}) =  _EmptyValue;
}
