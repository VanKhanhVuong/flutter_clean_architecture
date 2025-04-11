// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_flashcard_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$EditFlashcardState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  FlashcardItemResponse? get originalFlashcard =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> get editedFlashcardData =>
      throw _privateConstructorUsedError;

  /// Create a copy of EditFlashcardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EditFlashcardStateCopyWith<EditFlashcardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditFlashcardStateCopyWith<$Res> {
  factory $EditFlashcardStateCopyWith(
    EditFlashcardState value,
    $Res Function(EditFlashcardState) then,
  ) = _$EditFlashcardStateCopyWithImpl<$Res, EditFlashcardState>;
  @useResult
  $Res call({
    bool isLoading,
    bool? isSuccess,
    String? errorMessage,
    FlashcardItemResponse? originalFlashcard,
    Map<String, dynamic> editedFlashcardData,
  });

  $FlashcardItemResponseCopyWith<$Res>? get originalFlashcard;
}

/// @nodoc
class _$EditFlashcardStateCopyWithImpl<$Res, $Val extends EditFlashcardState>
    implements $EditFlashcardStateCopyWith<$Res> {
  _$EditFlashcardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditFlashcardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isSuccess = freezed,
    Object? errorMessage = freezed,
    Object? originalFlashcard = freezed,
    Object? editedFlashcardData = null,
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
            editedFlashcardData:
                null == editedFlashcardData
                    ? _value.editedFlashcardData
                    : editedFlashcardData // ignore: cast_nullable_to_non_nullable
                        as Map<String, dynamic>,
          )
          as $Val,
    );
  }

  /// Create a copy of EditFlashcardState
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
abstract class _$$EditFlashcardStateImplCopyWith<$Res>
    implements $EditFlashcardStateCopyWith<$Res> {
  factory _$$EditFlashcardStateImplCopyWith(
    _$EditFlashcardStateImpl value,
    $Res Function(_$EditFlashcardStateImpl) then,
  ) = __$$EditFlashcardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool isLoading,
    bool? isSuccess,
    String? errorMessage,
    FlashcardItemResponse? originalFlashcard,
    Map<String, dynamic> editedFlashcardData,
  });

  @override
  $FlashcardItemResponseCopyWith<$Res>? get originalFlashcard;
}

/// @nodoc
class __$$EditFlashcardStateImplCopyWithImpl<$Res>
    extends _$EditFlashcardStateCopyWithImpl<$Res, _$EditFlashcardStateImpl>
    implements _$$EditFlashcardStateImplCopyWith<$Res> {
  __$$EditFlashcardStateImplCopyWithImpl(
    _$EditFlashcardStateImpl _value,
    $Res Function(_$EditFlashcardStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EditFlashcardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isSuccess = freezed,
    Object? errorMessage = freezed,
    Object? originalFlashcard = freezed,
    Object? editedFlashcardData = null,
  }) {
    return _then(
      _$EditFlashcardStateImpl(
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
        editedFlashcardData:
            null == editedFlashcardData
                ? _value._editedFlashcardData
                : editedFlashcardData // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>,
      ),
    );
  }
}

/// @nodoc

class _$EditFlashcardStateImpl implements _EditFlashcardState {
  _$EditFlashcardStateImpl({
    this.isLoading = false,
    this.isSuccess,
    this.errorMessage,
    this.originalFlashcard,
    final Map<String, dynamic> editedFlashcardData = const {},
  }) : _editedFlashcardData = editedFlashcardData;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final bool? isSuccess;
  @override
  final String? errorMessage;
  @override
  final FlashcardItemResponse? originalFlashcard;
  final Map<String, dynamic> _editedFlashcardData;
  @override
  @JsonKey()
  Map<String, dynamic> get editedFlashcardData {
    if (_editedFlashcardData is EqualUnmodifiableMapView)
      return _editedFlashcardData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_editedFlashcardData);
  }

  @override
  String toString() {
    return 'EditFlashcardState(isLoading: $isLoading, isSuccess: $isSuccess, errorMessage: $errorMessage, originalFlashcard: $originalFlashcard, editedFlashcardData: $editedFlashcardData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditFlashcardStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.originalFlashcard, originalFlashcard) ||
                other.originalFlashcard == originalFlashcard) &&
            const DeepCollectionEquality().equals(
              other._editedFlashcardData,
              _editedFlashcardData,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    isLoading,
    isSuccess,
    errorMessage,
    originalFlashcard,
    const DeepCollectionEquality().hash(_editedFlashcardData),
  );

  /// Create a copy of EditFlashcardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditFlashcardStateImplCopyWith<_$EditFlashcardStateImpl> get copyWith =>
      __$$EditFlashcardStateImplCopyWithImpl<_$EditFlashcardStateImpl>(
        this,
        _$identity,
      );
}

abstract class _EditFlashcardState implements EditFlashcardState {
  factory _EditFlashcardState({
    final bool isLoading,
    final bool? isSuccess,
    final String? errorMessage,
    final FlashcardItemResponse? originalFlashcard,
    final Map<String, dynamic> editedFlashcardData,
  }) = _$EditFlashcardStateImpl;

  @override
  bool get isLoading;
  @override
  bool? get isSuccess;
  @override
  String? get errorMessage;
  @override
  FlashcardItemResponse? get originalFlashcard;
  @override
  Map<String, dynamic> get editedFlashcardData;

  /// Create a copy of EditFlashcardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditFlashcardStateImplCopyWith<_$EditFlashcardStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
