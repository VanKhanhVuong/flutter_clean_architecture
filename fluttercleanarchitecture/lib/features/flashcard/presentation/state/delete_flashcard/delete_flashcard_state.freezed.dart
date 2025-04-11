// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_flashcard_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DeleteFlashcardState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  FlashcardItemResponse? get originalFlashcard =>
      throw _privateConstructorUsedError;

  /// Create a copy of DeleteFlashcardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteFlashcardStateCopyWith<DeleteFlashcardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteFlashcardStateCopyWith<$Res> {
  factory $DeleteFlashcardStateCopyWith(
    DeleteFlashcardState value,
    $Res Function(DeleteFlashcardState) then,
  ) = _$DeleteFlashcardStateCopyWithImpl<$Res, DeleteFlashcardState>;
  @useResult
  $Res call({
    bool isLoading,
    bool? isSuccess,
    String? errorMessage,
    FlashcardItemResponse? originalFlashcard,
  });

  $FlashcardItemResponseCopyWith<$Res>? get originalFlashcard;
}

/// @nodoc
class _$DeleteFlashcardStateCopyWithImpl<
  $Res,
  $Val extends DeleteFlashcardState
>
    implements $DeleteFlashcardStateCopyWith<$Res> {
  _$DeleteFlashcardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteFlashcardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isSuccess = freezed,
    Object? errorMessage = freezed,
    Object? originalFlashcard = freezed,
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
            originalFlashcard:
                freezed == originalFlashcard
                    ? _value.originalFlashcard
                    : originalFlashcard // ignore: cast_nullable_to_non_nullable
                        as FlashcardItemResponse?,
          )
          as $Val,
    );
  }

  /// Create a copy of DeleteFlashcardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FlashcardItemResponseCopyWith<$Res>? get originalFlashcard {
    if (_value.originalFlashcard == null) {
      return null;
    }

    return $FlashcardItemResponseCopyWith<$Res>(_value.originalFlashcard!, (
      value,
    ) {
      return _then(_value.copyWith(originalFlashcard: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeleteFlashcardStateImplCopyWith<$Res>
    implements $DeleteFlashcardStateCopyWith<$Res> {
  factory _$$DeleteFlashcardStateImplCopyWith(
    _$DeleteFlashcardStateImpl value,
    $Res Function(_$DeleteFlashcardStateImpl) then,
  ) = __$$DeleteFlashcardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool isLoading,
    bool? isSuccess,
    String? errorMessage,
    FlashcardItemResponse? originalFlashcard,
  });

  @override
  $FlashcardItemResponseCopyWith<$Res>? get originalFlashcard;
}

/// @nodoc
class __$$DeleteFlashcardStateImplCopyWithImpl<$Res>
    extends _$DeleteFlashcardStateCopyWithImpl<$Res, _$DeleteFlashcardStateImpl>
    implements _$$DeleteFlashcardStateImplCopyWith<$Res> {
  __$$DeleteFlashcardStateImplCopyWithImpl(
    _$DeleteFlashcardStateImpl _value,
    $Res Function(_$DeleteFlashcardStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeleteFlashcardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isSuccess = freezed,
    Object? errorMessage = freezed,
    Object? originalFlashcard = freezed,
  }) {
    return _then(
      _$DeleteFlashcardStateImpl(
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
        originalFlashcard:
            freezed == originalFlashcard
                ? _value.originalFlashcard
                : originalFlashcard // ignore: cast_nullable_to_non_nullable
                    as FlashcardItemResponse?,
      ),
    );
  }
}

/// @nodoc

class _$DeleteFlashcardStateImpl implements _DeleteFlashcardState {
  _$DeleteFlashcardStateImpl({
    this.isLoading = false,
    this.isSuccess,
    this.errorMessage,
    this.originalFlashcard,
  });

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final bool? isSuccess;
  @override
  final String? errorMessage;
  @override
  final FlashcardItemResponse? originalFlashcard;

  @override
  String toString() {
    return 'DeleteFlashcardState(isLoading: $isLoading, isSuccess: $isSuccess, errorMessage: $errorMessage, originalFlashcard: $originalFlashcard)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFlashcardStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.originalFlashcard, originalFlashcard) ||
                other.originalFlashcard == originalFlashcard));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    isLoading,
    isSuccess,
    errorMessage,
    originalFlashcard,
  );

  /// Create a copy of DeleteFlashcardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteFlashcardStateImplCopyWith<_$DeleteFlashcardStateImpl>
  get copyWith =>
      __$$DeleteFlashcardStateImplCopyWithImpl<_$DeleteFlashcardStateImpl>(
        this,
        _$identity,
      );
}

abstract class _DeleteFlashcardState implements DeleteFlashcardState {
  factory _DeleteFlashcardState({
    final bool isLoading,
    final bool? isSuccess,
    final String? errorMessage,
    final FlashcardItemResponse? originalFlashcard,
  }) = _$DeleteFlashcardStateImpl;

  @override
  bool get isLoading;
  @override
  bool? get isSuccess;
  @override
  String? get errorMessage;
  @override
  FlashcardItemResponse? get originalFlashcard;

  /// Create a copy of DeleteFlashcardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteFlashcardStateImplCopyWith<_$DeleteFlashcardStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
