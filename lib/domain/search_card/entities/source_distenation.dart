import 'package:bus_tracking_app/domain/search_card/search_card_validation/search_card_validator.dart';
import 'package:dartz/dartz.dart';

import 'package:bus_tracking_app/domain/core/value_failure.dart';
import 'package:bus_tracking_app/domain/core/value_object.dart';

class SourceOrDestination extends ValueObject {
  SourceOrDestination._({required this.value});
  @override
  Either<ValueFailures, String> value;
  factory SourceOrDestination({required String value}){
    return SourceOrDestination._(value: searchCardValidator(value: value));
  }
}
