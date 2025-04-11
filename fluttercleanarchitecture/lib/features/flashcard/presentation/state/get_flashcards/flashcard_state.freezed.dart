// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flashcard_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$FlashcardsState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  List<FlashcardResponse> get flashcards => throw _privateConstructorUsedError;

  /// Create a copy of FlashcardsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FlashcardsStateCopyWith<FlashcardsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlashcardsStateCopyWith<$Res> {
  factory $FlashcardsStateCopyWith(
    FlashcardsState value,
    $Res Function(FlashcardsState) then,
  ) = _$FlashcardsStateCopyWithImpl<$Res, FlashcardsState>;
  @useResult
  $Res call({
    bool isLoading,
    bool? isSuccess,
    String? errorMessage,
    List<FlashcardResponse> flashcards,
  });
}

/// @nodoc
class _$FlashcardsStateCopyWithImpl<$Res, $Val extends FlashcardsState>
    implements $FlashcardsStateCopyWith<$Res> {
  _$FlashcardsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FlashcardsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isSuccess = freezed,
    Object? errorMessage = freezed,
    Object? flashcards = null,
  }) {
    return _then(
      _value.copyWith(
            isLoading:
                null == isLoading
                    ? _value.isLoading
                    : isLoading // ignore: cast_nullable_to_non_nullable
                        as bool,
            isSuccess:
                freezed == isSuccess
                    ? _value.isSuccess
                    : isSuccess // ignore: cast_nullable_to_non_nullable
                        as bool?,
            errorMessage:
                freezed == errorMessage
                    ? _value.errorMessage
                    : errorMessage // ignore: cast_nullable_to_non_nullable
                        as String?,
            flashcards:
                null == flashcards
                    ? _value.flashcards
                    : flashcards // ignore: cast_nullable_to_non_nullable
                        as List<FlashcardResponse>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FlashcardsStateImplCopyWith<$Res>
    implements $FlashcardsStateCopyWith<$Res> {
  factory _$$FlashcardsStateImplCopyWith(
    _$FlashcardsStateImpl value,
    $Res Function(_$FlashcardsStateImpl) then,
  ) = __$$FlashcardsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool isLoading,
    bool? isSuccess,
    String? errorMessage,
    List<FlashcardResponse> flashcards,
  });
}

/// @nodoc
class __$$FlashcardsStateImplCopyWithImpl<$Res>
    extends _$FlashcardsStateCopyWithImpl<$Res, _$FlashcardsStateImpl>
    implements _$$FlashcardsStateImplCopyWith<$Res> {
  __$$FlashcardsStateImplCopyWithImpl(
    _$FlashcardsStateImpl _value,
    $Res Function(_$FlashcardsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FlashcardsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isSuccess = freezed,
    Object? errorMessage = freezed,
    Object? flashcards = null,
  }) {
    return _then(
      _$FlashcardsStateImpl(
        isLoading:
            null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                    as bool,
        isSuccess:
            freezed == isSuccess
                ? _value.isSuccess
                : isSuccess // ignore: cast_nullable_to_non_nullable
                    as bool?,
        errorMessage:
            freezed == errorMessage
                ? _value.errorMessage
                : errorMessage // ignore: cast_nullable_to_non_nullable
                    as String?,
        flashcards:
            null == flashcards
                ? _value._flashcards
                : flashcards // ignore: cast_nullable_to_non_nullable
                    as List<FlashcardResponse>,
      ),
    );
  }
}

/// @nodoc

class _$FlashcardsStateImpl implements _FlashcardsState {
  _$FlashcardsStateImpl({
    this.isLoading = false,
    this.isSuccess,
    this.errorMessage,
    final List<FlashcardResponse> flashcards = const [],
  }) : _flashcards = flashcards;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final bool? isSuccess;
  @override
  final String? errorMessage;
  final List<FlashcardResponse> _flashcards;
  @override
  @JsonKey()
  List<FlashcardResponse> get flashcards {
    if (_flashcards is EqualUnmodifiableListView) return _flashcards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_flashcards);
  }

  @override
  String toString() {
    return 'FlashcardsState(isLoading: $isLoading, isSuccess: $isSuccess, errorMessage: $errorMessage, flashcards: $flashcards)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlashcardsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(
              other._flashcards,
              _flashcards,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    isLoading,
    isSuccess,
    errorMessage,
    const DeepCollectionEquality().hash(_flashcards),
  );

  /// Create a copy of FlashcardsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FlashcardsStateImplCopyWith<_$FlashcardsStateImpl> get copyWith =>
      __$$FlashcardsStateImplCopyWithImpl<_$FlashcardsStateImpl>(
        this,
        _$identity,
      );
}

abstract class _FlashcardsState implements FlashcardsState {
  factory _FlashcardsState({
    final bool isLoading,
    final bool? isSuccess,
    final String? errorMessage,
    final List<FlashcardResponse> flashcards,
  }) = _$FlashcardsStateImpl;

  @override
  bool get isLoading;
  @override
  bool? get isSuccess;
  @override
  String? get errorMessage;
  @override
  List<FlashcardResponse> get flashcards;

  /// Create a copy of FlashcardsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FlashcardsStateImplCopyWith<_$FlashcardsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
