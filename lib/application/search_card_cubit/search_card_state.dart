part of 'search_card_cubit.dart';

@freezed
class SearchCardState with _$SearchCardState {
  const factory SearchCardState({
    required SourceOrDestination source,
    required SourceOrDestination destination,
    required bool isValid,
    required String errorMessage,
  }) = _SearchCardState;
  factory SearchCardState.initial() => SearchCardState(
        source: SourceOrDestination(value: ''),
        destination: SourceOrDestination(value: ''),
        isValid: true,
        errorMessage: '',
      );
}
