// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_flashcard_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CreateFlashcardState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  FlashcardItemResponse? get flashcard => throw _privateConstructorUsedError;
  Map<String, dynamic> get flashcardFrom => throw _privateConstructorUsedError;

  /// Create a copy of CreateFlashcardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateFlashcardStateCopyWith<CreateFlashcardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateFlashcardStateCopyWith<$Res> {
  factory $CreateFlashcardStateCopyWith(
    CreateFlashcardState value,
    $Res Function(CreateFlashcardState) then,
  ) = _$CreateFlashcardStateCopyWithImpl<$Res, CreateFlashcardState>;
  @useResult
  $Res call({
    bool isLoading,
    bool? isSuccess,
    String? errorMessage,
    FlashcardItemResponse? flashcard,
    Map<String, dynamic> flashcardFrom,
  });

  $FlashcardItemResponseCopyWith<$Res>? get flashcard;
}

/// @nodoc
class _$CreateFlashcardStateCopyWithImpl<
  $Res,
  $Val extends CreateFlashcardState
>
    implements $CreateFlashcardStateCopyWith<$Res> {
  _$CreateFlashcardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateFlashcardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isSuccess = freezed,
    Object? errorMessage = freezed,
    Object? flashcard = freezed,
    Object? flashcardFrom = null,
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
            flashcard:
                freezed == flashcard
                    ? _value.flashcard
                    : flashcard // ignore: cast_nullable_to_non_nullable
                        as FlashcardItemResponse?,
            flashcardFrom:
                null == flashcardFrom
                    ? _value.flashcardFrom
                    : flashcardFrom // ignore: cast_nullable_to_non_nullable
                        as Map<String, dynamic>,
          )
          as $Val,
    );
  }

  /// Create a copy of CreateFlashcardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FlashcardItemResponseCopyWith<$Res>? get flashcard {
    if (_value.flashcard == null) {
      return null;
    }

    return $FlashcardItemResponseCopyWith<$Res>(_value.flashcard!, (value) {
      return _then(_value.copyWith(flashcard: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateFlashcardStateImplCopyWith<$Res>
    implements $CreateFlashcardStateCopyWith<$Res> {
  factory _$$CreateFlashcardStateImplCopyWith(
    _$CreateFlashcardStateImpl value,
    $Res Function(_$CreateFlashcardStateImpl) then,
  ) = __$$CreateFlashcardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool isLoading,
    bool? isSuccess,
    String? errorMessage,
    FlashcardItemResponse? flashcard,
    Map<String, dynamic> flashcardFrom,
  });

  @override
  $FlashcardItemResponseCopyWith<$Res>? get flashcard;
}

/// @nodoc
class __$$CreateFlashcardStateImplCopyWithImpl<$Res>
    extends _$CreateFlashcardStateCopyWithImpl<$Res, _$CreateFlashcardStateImpl>
    implements _$$CreateFlashcardStateImplCopyWith<$Res> {
  __$$CreateFlashcardStateImplCopyWithImpl(
    _$CreateFlashcardStateImpl _value,
    $Res Function(_$CreateFlashcardStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateFlashcardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isSuccess = freezed,
    Object? errorMessage = freezed,
    Object? flashcard = freezed,
    Object? flashcardFrom = null,
  }) {
    return _then(
      _$CreateFlashcardStateImpl(
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
        flashcard:
            freezed == flashcard
                ? _value.flashcard
                : flashcard // ignore: cast_nullable_to_non_nullable
                    as FlashcardItemResponse?,
        flashcardFrom:
            null == flashcardFrom
                ? _value._flashcardFrom
                : flashcardFrom // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>,
      ),
    );
  }
}

/// @nodoc

class _$CreateFlashcardStateImpl implements _CreateFlashcardState {
  _$CreateFlashcardStateImpl({
    this.isLoading = false,
    this.isSuccess,
    this.errorMessage,
    this.flashcard,
    final Map<String, dynamic> flashcardFrom = const {},
  }) : _flashcardFrom = flashcardFrom;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final bool? isSuccess;
  @override
  final String? errorMessage;
  @override
  final FlashcardItemResponse? flashcard;
  final Map<String, dynamic> _flashcardFrom;
  @override
  @JsonKey()
  Map<String, dynamic> get flashcardFrom {
    if (_flashcardFrom is EqualUnmodifiableMapView) return _flashcardFrom;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_flashcardFrom);
  }

  @override
  String toString() {
    return 'CreateFlashcardState(isLoading: $isLoading, isSuccess: $isSuccess, errorMessage: $errorMessage, flashcard: $flashcard, flashcardFrom: $flashcardFrom)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateFlashcardStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.flashcard, flashcard) ||
                other.flashcard == flashcard) &&
            const DeepCollectionEquality().equals(
              other._flashcardFrom,
              _flashcardFrom,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    isLoading,
    isSuccess,
    errorMessage,
    flashcard,
    const DeepCollectionEquality().hash(_flashcardFrom),
  );

  /// Create a copy of CreateFlashcardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateFlashcardStateImplCopyWith<_$CreateFlashcardStateImpl>
  get copyWith =>
      __$$CreateFlashcardStateImplCopyWithImpl<_$CreateFlashcardStateImpl>(
        this,
        _$identity,
      );
}

abstract class _CreateFlashcardState implements CreateFlashcardState {
  factory _CreateFlashcardState({
    final bool isLoading,
    final bool? isSuccess,
    final String? errorMessage,
    final FlashcardItemResponse? flashcard,
    final Map<String, dynamic> flashcardFrom,
  }) = _$CreateFlashcardStateImpl;

  @override
  bool get isLoading;
  @override
  bool? get isSuccess;
  @override
  String? get errorMessage;
  @override
  FlashcardItemResponse? get flashcard;
  @override
  Map<String, dynamic> get flashcardFrom;

  /// Create a copy of CreateFlashcardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateFlashcardStateImplCopyWith<_$CreateFlashcardStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
