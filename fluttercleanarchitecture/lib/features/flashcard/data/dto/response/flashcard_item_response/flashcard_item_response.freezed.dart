// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flashcard_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FlashcardItemResponse _$FlashcardItemResponseFromJson(
  Map<String, dynamic> json,
) {
  return _FlashcardItemResponse.fromJson(json);
}

/// @nodoc
mixin _$FlashcardItemResponse {
  @JsonKey(name: "success")
  bool get success => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "flashcard_data")
  FlashcardResponse get flashcardData => throw _privateConstructorUsedError;

  /// Serializes this FlashcardItemResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FlashcardItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FlashcardItemResponseCopyWith<FlashcardItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlashcardItemResponseCopyWith<$Res> {
  factory $FlashcardItemResponseCopyWith(
    FlashcardItemResponse value,
    $Res Function(FlashcardItemResponse) then,
  ) = _$FlashcardItemResponseCopyWithImpl<$Res, FlashcardItemResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "success") bool success,
    @JsonKey(name: "message") String message,
    @JsonKey(name: "flashcard_data") FlashcardResponse flashcardData,
  });

  $FlashcardResponseCopyWith<$Res> get flashcardData;
}

/// @nodoc
class _$FlashcardItemResponseCopyWithImpl<
  $Res,
  $Val extends FlashcardItemResponse
>
    implements $FlashcardItemResponseCopyWith<$Res> {
  _$FlashcardItemResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FlashcardItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? flashcardData = null,
  }) {
    return _then(
      _value.copyWith(
            success:
                null == success
                    ? _value.success
                    : success // ignore: cast_nullable_to_non_nullable
                        as bool,
            message:
                null == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String,
            flashcardData:
                null == flashcardData
                    ? _value.flashcardData
                    : flashcardData // ignore: cast_nullable_to_non_nullable
                        as FlashcardResponse,
          )
          as $Val,
    );
  }

  /// Create a copy of FlashcardItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FlashcardResponseCopyWith<$Res> get flashcardData {
    return $FlashcardResponseCopyWith<$Res>(_value.flashcardData, (value) {
      return _then(_value.copyWith(flashcardData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FlashcardItemResponseImplCopyWith<$Res>
    implements $FlashcardItemResponseCopyWith<$Res> {
  factory _$$FlashcardItemResponseImplCopyWith(
    _$FlashcardItemResponseImpl value,
    $Res Function(_$FlashcardItemResponseImpl) then,
  ) = __$$FlashcardItemResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "success") bool success,
    @JsonKey(name: "message") String message,
    @JsonKey(name: "flashcard_data") FlashcardResponse flashcardData,
  });

  @override
  $FlashcardResponseCopyWith<$Res> get flashcardData;
}

/// @nodoc
class __$$FlashcardItemResponseImplCopyWithImpl<$Res>
    extends
        _$FlashcardItemResponseCopyWithImpl<$Res, _$FlashcardItemResponseImpl>
    implements _$$FlashcardItemResponseImplCopyWith<$Res> {
  __$$FlashcardItemResponseImplCopyWithImpl(
    _$FlashcardItemResponseImpl _value,
    $Res Function(_$FlashcardItemResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FlashcardItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? flashcardData = null,
  }) {
    return _then(
      _$FlashcardItemResponseImpl(
        success:
            null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                    as bool,
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
        flashcardData:
            null == flashcardData
                ? _value.flashcardData
                : flashcardData // ignore: cast_nullable_to_non_nullable
                    as FlashcardResponse,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FlashcardItemResponseImpl implements _FlashcardItemResponse {
  const _$FlashcardItemResponseImpl({
    @JsonKey(name: "success") required this.success,
    @JsonKey(name: "message") required this.message,
    @JsonKey(name: "flashcard_data") required this.flashcardData,
  });

  factory _$FlashcardItemResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlashcardItemResponseImplFromJson(json);

  @override
  @JsonKey(name: "success")
  final bool success;
  @override
  @JsonKey(name: "message")
  final String message;
  @override
  @JsonKey(name: "flashcard_data")
  final FlashcardResponse flashcardData;

  @override
  String toString() {
    return 'FlashcardItemResponse(success: $success, message: $message, flashcardData: $flashcardData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlashcardItemResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.flashcardData, flashcardData) ||
                other.flashcardData == flashcardData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, flashcardData);

  /// Create a copy of FlashcardItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FlashcardItemResponseImplCopyWith<_$FlashcardItemResponseImpl>
  get copyWith =>
      __$$FlashcardItemResponseImplCopyWithImpl<_$FlashcardItemResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$FlashcardItemResponseImplToJson(this);
  }
}

abstract class _FlashcardItemResponse implements FlashcardItemResponse {
  const factory _FlashcardItemResponse({
    @JsonKey(name: "success") required final bool success,
    @JsonKey(name: "message") required final String message,
    @JsonKey(name: "flashcard_data")
    required final FlashcardResponse flashcardData,
  }) = _$FlashcardItemResponseImpl;

  factory _FlashcardItemResponse.fromJson(Map<String, dynamic> json) =
      _$FlashcardItemResponseImpl.fromJson;

  @override
  @JsonKey(name: "success")
  bool get success;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "flashcard_data")
  FlashcardResponse get flashcardData;

  /// Create a copy of FlashcardItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FlashcardItemResponseImplCopyWith<_$FlashcardItemResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
