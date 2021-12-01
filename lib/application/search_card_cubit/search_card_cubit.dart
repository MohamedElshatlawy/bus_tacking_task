import 'package:bloc/bloc.dart';
import 'package:bus_tracking_app/domain/search_card/entities/source_distenation.dart';
import 'package:bus_tracking_app/domain/search_card/map_repo.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'search_card_state.dart';
part 'search_card_cubit.freezed.dart';

// contains all the functionality of home page
@injectable
class SearchCardCubit extends Cubit<SearchCardState> {
  SearchCardCubit(this._mapRepo) : super(SearchCardState.initial());
  final MapRepo _mapRepo;

  /// for adding source place
  void addSource({required String source}) => emit(state.copyWith(
      source: SourceOrDestination(value: source), isValid: true));

  /// for adding Destination place
  void addDistenetion({required String destination}) => emit(state.copyWith(
      destination: SourceOrDestination(value: destination), isValid: true));

  /// swap button function
  void swap(
      {required TextEditingController sourceController,
      required TextEditingController destinationController}) {
    // changing the value of the text controller
    sourceController.text = state.destination.value.fold((l) => '', (r) => r);
    destinationController.text = state.source.value.fold((l) => '', (r) => r);
    return emit(
        state.copyWith(destination: state.source, source: state.destination));
  }

  /// go to map page
  bool canGoToMap() {
    bool isCitiesFound = _mapRepo.canGetThoseCountries(
        source: state.source, destination: state.destination);
        // if the values stisfied all the conditions
        // also if these cities are inside the mocketo
        // go to the next page
    if (state.destination.value.isRight() &&
        state.source.value.isRight() &&
        isCitiesFound) {
      emit(state.copyWith(isValid: true));
      return true;
      // if the value is not satisfy the conditions
      // return false with a message for the ui
    } else if (!(state.destination.value.isRight() &&
        state.source.value.isRight())) {
      emit(state.copyWith(
          isValid: false, errorMessage: "Please Enter The Empty Place"));
      return false;
      // is the cities are not found 
       // return false with a message for the ui
    } else if (!isCitiesFound) {
      emit(state.copyWith(isValid: false, errorMessage: "Not Found"));
      return false;
      // if the cities are found 
      // return true
    } else {
      return true;
    }
  }
}
