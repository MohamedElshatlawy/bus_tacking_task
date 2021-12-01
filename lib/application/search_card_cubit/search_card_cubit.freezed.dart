// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'search_card_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchCardStateTearOff {
  const _$SearchCardStateTearOff();

  _SearchCardState call(
      {required SourceOrDestination source,
      required SourceOrDestination destination,
      required bool isValid,
      required String errorMessage}) {
    return _SearchCardState(
      source: source,
      destination: destination,
      isValid: isValid,
      errorMessage: errorMessage,
    );
  }
}

/// @nodoc
const $SearchCardState = _$SearchCardStateTearOff();

/// @nodoc
mixin _$SearchCardState {
  SourceOrDestination get source => throw _privateConstructorUsedError;
  SourceOrDestination get destination => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchCardStateCopyWith<SearchCardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchCardStateCopyWith<$Res> {
  factory $SearchCardStateCopyWith(
          SearchCardState value, $Res Function(SearchCardState) then) =
      _$SearchCardStateCopyWithImpl<$Res>;
  $Res call(
      {SourceOrDestination source,
      SourceOrDestination destination,
      bool isValid,
      String errorMessage});
}

/// @nodoc
class _$SearchCardStateCopyWithImpl<$Res>
    implements $SearchCardStateCopyWith<$Res> {
  _$SearchCardStateCopyWithImpl(this._value, this._then);

  final SearchCardState _value;
  // ignore: unused_field
  final $Res Function(SearchCardState) _then;

  @override
  $Res call({
    Object? source = freezed,
    Object? destination = freezed,
    Object? isValid = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as SourceOrDestination,
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as SourceOrDestination,
      isValid: isValid == freezed
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SearchCardStateCopyWith<$Res>
    implements $SearchCardStateCopyWith<$Res> {
  factory _$SearchCardStateCopyWith(
          _SearchCardState value, $Res Function(_SearchCardState) then) =
      __$SearchCardStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {SourceOrDestination source,
      SourceOrDestination destination,
      bool isValid,
      String errorMessage});
}

/// @nodoc
class __$SearchCardStateCopyWithImpl<$Res>
    extends _$SearchCardStateCopyWithImpl<$Res>
    implements _$SearchCardStateCopyWith<$Res> {
  __$SearchCardStateCopyWithImpl(
      _SearchCardState _value, $Res Function(_SearchCardState) _then)
      : super(_value, (v) => _then(v as _SearchCardState));

  @override
  _SearchCardState get _value => super._value as _SearchCardState;

  @override
  $Res call({
    Object? source = freezed,
    Object? destination = freezed,
    Object? isValid = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_SearchCardState(
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as SourceOrDestination,
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as SourceOrDestination,
      isValid: isValid == freezed
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_SearchCardState implements _SearchCardState {
  const _$_SearchCardState(
      {required this.source,
      required this.destination,
      required this.isValid,
      required this.errorMessage});

  @override
  final SourceOrDestination source;
  @override
  final SourceOrDestination destination;
  @override
  final bool isValid;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'SearchCardState(source: $source, destination: $destination, isValid: $isValid, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchCardState &&
            (identical(other.source, source) ||
                const DeepCollectionEquality().equals(other.source, source)) &&
            (identical(other.destination, destination) ||
                const DeepCollectionEquality()
                    .equals(other.destination, destination)) &&
            (identical(other.isValid, isValid) ||
                const DeepCollectionEquality()
                    .equals(other.isValid, isValid)) &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(source) ^
      const DeepCollectionEquality().hash(destination) ^
      const DeepCollectionEquality().hash(isValid) ^
      const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  _$SearchCardStateCopyWith<_SearchCardState> get copyWith =>
      __$SearchCardStateCopyWithImpl<_SearchCardState>(this, _$identity);
}

abstract class _SearchCardState implements SearchCardState {
  const factory _SearchCardState(
      {required SourceOrDestination source,
      required SourceOrDestination destination,
      required bool isValid,
      required String errorMessage}) = _$_SearchCardState;

  @override
  SourceOrDestination get source => throw _privateConstructorUsedError;
  @override
  SourceOrDestination get destination => throw _privateConstructorUsedError;
  @override
  bool get isValid => throw _privateConstructorUsedError;
  @override
  String get errorMessage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SearchCardStateCopyWith<_SearchCardState> get copyWith =>
      throw _privateConstructorUsedError;
}
