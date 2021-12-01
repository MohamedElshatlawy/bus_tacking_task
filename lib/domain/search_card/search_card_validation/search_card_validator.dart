import 'package:bus_tracking_app/domain/core/value_failure.dart';
import 'package:dartz/dartz.dart';

Either<ValueFailures,String> searchCardValidator({required String value}){
  if(value.trim().isEmpty){
    return left(const ValueFailures.emptyValue(msg: "Please Enter The Place")) ;
  }else {
    return right(value);
  }
}