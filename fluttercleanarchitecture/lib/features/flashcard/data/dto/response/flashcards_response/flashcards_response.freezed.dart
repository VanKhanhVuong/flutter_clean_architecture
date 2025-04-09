// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flashcards_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FlashcardsResponse _$FlashcardsResponseFromJson(Map<String, dynamic> json) {
  return _FlashcardsResponse.fromJson(json);
}

/// @nodoc
mixin _$FlashcardsResponse {
  @JsonKey(name: "success")
  bool get success => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "flashcards_data")
  List<FlashcardResponse> get flashcardsData =>
      throw _privateConstructorUsedError;

  /// Serializes this FlashcardsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FlashcardsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FlashcardsResponseCopyWith<FlashcardsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlashcardsResponseCopyWith<$Res> {
  factory $FlashcardsResponseCopyWith(
    FlashcardsResponse value,
    $Res Function(FlashcardsResponse) then,
  ) = _$FlashcardsResponseCopyWithImpl<$Res, FlashcardsResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "success") bool success,
    @JsonKey(name: "message") String message,
    @JsonKey(name: "flashcards_data") List<FlashcardResponse> flashcardsData,
  });
}

/// @nodoc
class _$FlashcardsResponseCopyWithImpl<$Res, $Val extends FlashcardsResponse>
    implements $FlashcardsResponseCopyWith<$Res> {
  _$FlashcardsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FlashcardsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? flashcardsData = null,
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
            flashcardsData:
                null == flashcardsData
                    ? _value.flashcardsData
                    : flashcardsData // ignore: cast_nullable_to_non_nullable
                        as List<FlashcardResponse>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FlashcardsResponseImplCopyWith<$Res>
    implements $FlashcardsResponseCopyWith<$Res> {
  factory _$$FlashcardsResponseImplCopyWith(
    _$FlashcardsResponseImpl value,
    $Res Function(_$FlashcardsResponseImpl) then,
  ) = __$$FlashcardsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "success") bool success,
    @JsonKey(name: "message") String message,
    @JsonKey(name: "flashcards_data") List<FlashcardResponse> flashcardsData,
  });
}

/// @nodoc
class __$$FlashcardsResponseImplCopyWithImpl<$Res>
    extends _$FlashcardsResponseCopyWithImpl<$Res, _$FlashcardsResponseImpl>
    implements _$$FlashcardsResponseImplCopyWith<$Res> {
  __$$FlashcardsResponseImplCopyWithImpl(
    _$FlashcardsResponseImpl _value,
    $Res Function(_$FlashcardsResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FlashcardsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? flashcardsData = null,
  }) {
    return _then(
      _$FlashcardsResponseImpl(
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
        flashcardsData:
            null == flashcardsData
                ? _value._flashcardsData
                : flashcardsData // ignore: cast_nullable_to_non_nullable
                    as List<FlashcardResponse>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FlashcardsResponseImpl implements _FlashcardsResponse {
  const _$FlashcardsResponseImpl({
    @JsonKey(name: "success") required this.success,
    @JsonKey(name: "message") required this.message,
    @JsonKey(name: "flashcards_data")
    required final List<FlashcardResponse> flashcardsData,
  }) : _flashcardsData = flashcardsData;

  factory _$FlashcardsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlashcardsResponseImplFromJson(json);

  @override
  @JsonKey(name: "success")
  final bool success;
  @override
  @JsonKey(name: "message")
  final String message;
  final List<FlashcardResponse> _flashcardsData;
  @override
  @JsonKey(name: "flashcards_data")
  List<FlashcardResponse> get flashcardsData {
    if (_flashcardsData is EqualUnmodifiableListView) return _flashcardsData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_flashcardsData);
  }

  @override
  String toString() {
    return 'FlashcardsResponse(success: $success, message: $message, flashcardsData: $flashcardsData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlashcardsResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(
              other._flashcardsData,
              _flashcardsData,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    success,
    message,
    const DeepCollectionEquality().hash(_flashcardsData),
  );

  /// Create a copy of FlashcardsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FlashcardsResponseImplCopyWith<_$FlashcardsResponseImpl> get copyWith =>
      __$$FlashcardsResponseImplCopyWithImpl<_$FlashcardsResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$FlashcardsResponseImplToJson(this);
  }
}

abstract class _FlashcardsResponse implements FlashcardsResponse {
  const factory _FlashcardsResponse({
    @JsonKey(name: "success") required final bool success,
    @JsonKey(name: "message") required final String message,
    @JsonKey(name: "flashcards_data")
    required final List<FlashcardResponse> flashcardsData,
  }) = _$FlashcardsResponseImpl;

  factory _FlashcardsResponse.fromJson(Map<String, dynamic> json) =
      _$FlashcardsResponseImpl.fromJson;

  @override
  @JsonKey(name: "success")
  bool get success;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "flashcards_data")
  List<FlashcardResponse> get flashcardsData;

  /// Create a copy of FlashcardsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FlashcardsResponseImplCopyWith<_$FlashcardsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
