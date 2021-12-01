import 'package:bus_tracking_app/domain/core/value_failure.dart';
import 'package:dartz/dartz.dart';

abstract class ValueObject {
  const ValueObject();
  Either<ValueFailures,String> get value;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ValueObject &&
      other.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}
