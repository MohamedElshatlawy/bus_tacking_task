// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'value_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ValueFailuresTearOff {
  const _$ValueFailuresTearOff();

  _EmptyValue emptyValue({required String msg}) {
    return _EmptyValue(
      msg: msg,
    );
  }
}

/// @nodoc
const $ValueFailures = _$ValueFailuresTearOff();

/// @nodoc
mixin _$ValueFailures {
  String get msg => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) emptyValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? emptyValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyValue value) emptyValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyValue value)? emptyValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailuresCopyWith<ValueFailures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailuresCopyWith<$Res> {
  factory $ValueFailuresCopyWith(
          ValueFailures value, $Res Function(ValueFailures) then) =
      _$ValueFailuresCopyWithImpl<$Res>;
  $Res call({String msg});
}

/// @nodoc
class _$ValueFailuresCopyWithImpl<$Res>
    implements $ValueFailuresCopyWith<$Res> {
  _$ValueFailuresCopyWithImpl(this._value, this._then);

  final ValueFailures _value;
  // ignore: unused_field
  final $Res Function(ValueFailures) _then;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_value.copyWith(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$EmptyValueCopyWith<$Res>
    implements $ValueFailuresCopyWith<$Res> {
  factory _$EmptyValueCopyWith(
          _EmptyValue value, $Res Function(_EmptyValue) then) =
      __$EmptyValueCopyWithImpl<$Res>;
  @override
  $Res call({String msg});
}

/// @nodoc
class __$EmptyValueCopyWithImpl<$Res> extends _$ValueFailuresCopyWithImpl<$Res>
    implements _$EmptyValueCopyWith<$Res> {
  __$EmptyValueCopyWithImpl(
      _EmptyValue _value, $Res Function(_EmptyValue) _then)
      : super(_value, (v) => _then(v as _EmptyValue));

  @override
  _EmptyValue get _value => super._value as _EmptyValue;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_EmptyValue(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_EmptyValue with DiagnosticableTreeMixin implements _EmptyValue {
  const _$_EmptyValue({required this.msg});

  @override
  final String msg;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailures.emptyValue(msg: $msg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailures.emptyValue'))
      ..add(DiagnosticsProperty('msg', msg));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmptyValue &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msg);

  @JsonKey(ignore: true)
  @override
  _$EmptyValueCopyWith<_EmptyValue> get copyWith =>
      __$EmptyValueCopyWithImpl<_EmptyValue>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) emptyValue,
  }) {
    return emptyValue(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? emptyValue,
    required TResult orElse(),
  }) {
    if (emptyValue != null) {
      return emptyValue(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyValue value) emptyValue,
  }) {
    return emptyValue(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyValue value)? emptyValue,
    required TResult orElse(),
  }) {
    if (emptyValue != null) {
      return emptyValue(this);
    }
    return orElse();
  }
}

abstract class _EmptyValue implements ValueFailures {
  const factory _EmptyValue({required String msg}) = _$_EmptyValue;

  @override
  String get msg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EmptyValueCopyWith<_EmptyValue> get copyWith =>
      throw _privateConstructorUsedError;
}
