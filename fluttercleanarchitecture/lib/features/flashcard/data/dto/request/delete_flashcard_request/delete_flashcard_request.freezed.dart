// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_flashcard_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DeleteFlashcardRequest _$DeleteFlashcardRequestFromJson(
  Map<String, dynamic> json,
) {
  return _DeleteFlashcardRequest.fromJson(json);
}

/// @nodoc
mixin _$DeleteFlashcardRequest {
  @JsonKey(name: "flashcard_id")
  int get flashcardId => throw _privateConstructorUsedError;

  /// Serializes this DeleteFlashcardRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeleteFlashcardRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteFlashcardRequestCopyWith<DeleteFlashcardRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteFlashcardRequestCopyWith<$Res> {
  factory $DeleteFlashcardRequestCopyWith(
    DeleteFlashcardRequest value,
    $Res Function(DeleteFlashcardRequest) then,
  ) = _$DeleteFlashcardRequestCopyWithImpl<$Res, DeleteFlashcardRequest>;
  @useResult
  $Res call({@JsonKey(name: "flashcard_id") int flashcardId});
}

/// @nodoc
class _$DeleteFlashcardRequestCopyWithImpl<
  $Res,
  $Val extends DeleteFlashcardRequest
>
    implements $DeleteFlashcardRequestCopyWith<$Res> {
  _$DeleteFlashcardRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteFlashcardRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? flashcardId = null}) {
    return _then(
      _value.copyWith(
            flashcardId:
                null == flashcardId
                    ? _value.flashcardId
                    : flashcardId // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DeleteFlashcardRequestImplCopyWith<$Res>
    implements $DeleteFlashcardRequestCopyWith<$Res> {
  factory _$$DeleteFlashcardRequestImplCopyWith(
    _$DeleteFlashcardRequestImpl value,
    $Res Function(_$DeleteFlashcardRequestImpl) then,
  ) = __$$DeleteFlashcardRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "flashcard_id") int flashcardId});
}

/// @nodoc
class __$$DeleteFlashcardRequestImplCopyWithImpl<$Res>
    extends
        _$DeleteFlashcardRequestCopyWithImpl<$Res, _$DeleteFlashcardRequestImpl>
    implements _$$DeleteFlashcardRequestImplCopyWith<$Res> {
  __$$DeleteFlashcardRequestImplCopyWithImpl(
    _$DeleteFlashcardRequestImpl _value,
    $Res Function(_$DeleteFlashcardRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeleteFlashcardRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? flashcardId = null}) {
    return _then(
      _$DeleteFlashcardRequestImpl(
        flashcardId:
            null == flashcardId
                ? _value.flashcardId
                : flashcardId // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteFlashcardRequestImpl implements _DeleteFlashcardRequest {
  const _$DeleteFlashcardRequestImpl({
    @JsonKey(name: "flashcard_id") required this.flashcardId,
  });

  factory _$DeleteFlashcardRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteFlashcardRequestImplFromJson(json);

  @override
  @JsonKey(name: "flashcard_id")
  final int flashcardId;

  @override
  String toString() {
    return 'DeleteFlashcardRequest(flashcardId: $flashcardId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFlashcardRequestImpl &&
            (identical(other.flashcardId, flashcardId) ||
                other.flashcardId == flashcardId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, flashcardId);

  /// Create a copy of DeleteFlashcardRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteFlashcardRequestImplCopyWith<_$DeleteFlashcardRequestImpl>
  get copyWith =>
      __$$DeleteFlashcardRequestImplCopyWithImpl<_$DeleteFlashcardRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteFlashcardRequestImplToJson(this);
  }
}

abstract class _DeleteFlashcardRequest implements DeleteFlashcardRequest {
  const factory _DeleteFlashcardRequest({
    @JsonKey(name: "flashcard_id") required final int flashcardId,
  }) = _$DeleteFlashcardRequestImpl;

  factory _DeleteFlashcardRequest.fromJson(Map<String, dynamic> json) =
      _$DeleteFlashcardRequestImpl.fromJson;

  @override
  @JsonKey(name: "flashcard_id")
  int get flashcardId;

  /// Create a copy of DeleteFlashcardRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteFlashcardRequestImplCopyWith<_$DeleteFlashcardRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}
