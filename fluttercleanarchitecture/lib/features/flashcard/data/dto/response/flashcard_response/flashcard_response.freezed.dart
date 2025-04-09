// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flashcard_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FlashcardResponse _$FlashcardResponseFromJson(Map<String, dynamic> json) {
  return _FlashcardResponse.fromJson(json);
}

/// @nodoc
mixin _$FlashcardResponse {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "question")
  String get question => throw _privateConstructorUsedError;
  @JsonKey(name: "answer")
  String get answer => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at", fromJson: _fromJsonDateTime)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at", fromJson: _fromJsonDateTime)
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this FlashcardResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FlashcardResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FlashcardResponseCopyWith<FlashcardResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlashcardResponseCopyWith<$Res> {
  factory $FlashcardResponseCopyWith(
    FlashcardResponse value,
    $Res Function(FlashcardResponse) then,
  ) = _$FlashcardResponseCopyWithImpl<$Res, FlashcardResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "id") int id,
    @JsonKey(name: "question") String question,
    @JsonKey(name: "answer") String answer,
    @JsonKey(name: "created_at", fromJson: _fromJsonDateTime)
    DateTime createdAt,
    @JsonKey(name: "updated_at", fromJson: _fromJsonDateTime)
    DateTime updatedAt,
  });
}

/// @nodoc
class _$FlashcardResponseCopyWithImpl<$Res, $Val extends FlashcardResponse>
    implements $FlashcardResponseCopyWith<$Res> {
  _$FlashcardResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FlashcardResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? answer = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            question:
                null == question
                    ? _value.question
                    : question // ignore: cast_nullable_to_non_nullable
                        as String,
            answer:
                null == answer
                    ? _value.answer
                    : answer // ignore: cast_nullable_to_non_nullable
                        as String,
            createdAt:
                null == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            updatedAt:
                null == updatedAt
                    ? _value.updatedAt
                    : updatedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FlashcardResponseImplCopyWith<$Res>
    implements $FlashcardResponseCopyWith<$Res> {
  factory _$$FlashcardResponseImplCopyWith(
    _$FlashcardResponseImpl value,
    $Res Function(_$FlashcardResponseImpl) then,
  ) = __$$FlashcardResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "id") int id,
    @JsonKey(name: "question") String question,
    @JsonKey(name: "answer") String answer,
    @JsonKey(name: "created_at", fromJson: _fromJsonDateTime)
    DateTime createdAt,
    @JsonKey(name: "updated_at", fromJson: _fromJsonDateTime)
    DateTime updatedAt,
  });
}

/// @nodoc
class __$$FlashcardResponseImplCopyWithImpl<$Res>
    extends _$FlashcardResponseCopyWithImpl<$Res, _$FlashcardResponseImpl>
    implements _$$FlashcardResponseImplCopyWith<$Res> {
  __$$FlashcardResponseImplCopyWithImpl(
    _$FlashcardResponseImpl _value,
    $Res Function(_$FlashcardResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FlashcardResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? answer = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$FlashcardResponseImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        question:
            null == question
                ? _value.question
                : question // ignore: cast_nullable_to_non_nullable
                    as String,
        answer:
            null == answer
                ? _value.answer
                : answer // ignore: cast_nullable_to_non_nullable
                    as String,
        createdAt:
            null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        updatedAt:
            null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FlashcardResponseImpl implements _FlashcardResponse {
  const _$FlashcardResponseImpl({
    @JsonKey(name: "id") required this.id,
    @JsonKey(name: "question") required this.question,
    @JsonKey(name: "answer") required this.answer,
    @JsonKey(name: "created_at", fromJson: _fromJsonDateTime)
    required this.createdAt,
    @JsonKey(name: "updated_at", fromJson: _fromJsonDateTime)
    required this.updatedAt,
  });

  factory _$FlashcardResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlashcardResponseImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "question")
  final String question;
  @override
  @JsonKey(name: "answer")
  final String answer;
  @override
  @JsonKey(name: "created_at", fromJson: _fromJsonDateTime)
  final DateTime createdAt;
  @override
  @JsonKey(name: "updated_at", fromJson: _fromJsonDateTime)
  final DateTime updatedAt;

  @override
  String toString() {
    return 'FlashcardResponse(id: $id, question: $question, answer: $answer, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlashcardResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, question, answer, createdAt, updatedAt);

  /// Create a copy of FlashcardResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FlashcardResponseImplCopyWith<_$FlashcardResponseImpl> get copyWith =>
      __$$FlashcardResponseImplCopyWithImpl<_$FlashcardResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$FlashcardResponseImplToJson(this);
  }
}

abstract class _FlashcardResponse implements FlashcardResponse {
  const factory _FlashcardResponse({
    @JsonKey(name: "id") required final int id,
    @JsonKey(name: "question") required final String question,
    @JsonKey(name: "answer") required final String answer,
    @JsonKey(name: "created_at", fromJson: _fromJsonDateTime)
    required final DateTime createdAt,
    @JsonKey(name: "updated_at", fromJson: _fromJsonDateTime)
    required final DateTime updatedAt,
  }) = _$FlashcardResponseImpl;

  factory _FlashcardResponse.fromJson(Map<String, dynamic> json) =
      _$FlashcardResponseImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "question")
  String get question;
  @override
  @JsonKey(name: "answer")
  String get answer;
  @override
  @JsonKey(name: "created_at", fromJson: _fromJsonDateTime)
  DateTime get createdAt;
  @override
  @JsonKey(name: "updated_at", fromJson: _fromJsonDateTime)
  DateTime get updatedAt;

  /// Create a copy of FlashcardResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FlashcardResponseImplCopyWith<_$FlashcardResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
