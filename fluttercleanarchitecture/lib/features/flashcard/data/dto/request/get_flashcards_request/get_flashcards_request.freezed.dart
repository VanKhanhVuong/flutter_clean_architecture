// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_flashcards_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

GetFlashcardsRequest _$GetFlashcardsRequestFromJson(Map<String, dynamic> json) {
  return _GetFlashcardsRequest.fromJson(json);
}

/// @nodoc
mixin _$GetFlashcardsRequest {
  @JsonKey(name: "user_id")
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  int get isActive => throw _privateConstructorUsedError;

  /// Serializes this GetFlashcardsRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetFlashcardsRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetFlashcardsRequestCopyWith<GetFlashcardsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFlashcardsRequestCopyWith<$Res> {
  factory $GetFlashcardsRequestCopyWith(
    GetFlashcardsRequest value,
    $Res Function(GetFlashcardsRequest) then,
  ) = _$GetFlashcardsRequestCopyWithImpl<$Res, GetFlashcardsRequest>;
  @useResult
  $Res call({
    @JsonKey(name: "user_id") int userId,
    @JsonKey(name: "is_active") int isActive,
  });
}

/// @nodoc
class _$GetFlashcardsRequestCopyWithImpl<
  $Res,
  $Val extends GetFlashcardsRequest
>
    implements $GetFlashcardsRequestCopyWith<$Res> {
  _$GetFlashcardsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetFlashcardsRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? userId = null, Object? isActive = null}) {
    return _then(
      _value.copyWith(
            userId:
                null == userId
                    ? _value.userId
                    : userId // ignore: cast_nullable_to_non_nullable
                        as int,
            isActive:
                null == isActive
                    ? _value.isActive
                    : isActive // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GetFlashcardsRequestImplCopyWith<$Res>
    implements $GetFlashcardsRequestCopyWith<$Res> {
  factory _$$GetFlashcardsRequestImplCopyWith(
    _$GetFlashcardsRequestImpl value,
    $Res Function(_$GetFlashcardsRequestImpl) then,
  ) = __$$GetFlashcardsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "user_id") int userId,
    @JsonKey(name: "is_active") int isActive,
  });
}

/// @nodoc
class __$$GetFlashcardsRequestImplCopyWithImpl<$Res>
    extends _$GetFlashcardsRequestCopyWithImpl<$Res, _$GetFlashcardsRequestImpl>
    implements _$$GetFlashcardsRequestImplCopyWith<$Res> {
  __$$GetFlashcardsRequestImplCopyWithImpl(
    _$GetFlashcardsRequestImpl _value,
    $Res Function(_$GetFlashcardsRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetFlashcardsRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? userId = null, Object? isActive = null}) {
    return _then(
      _$GetFlashcardsRequestImpl(
        userId:
            null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                    as int,
        isActive:
            null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GetFlashcardsRequestImpl implements _GetFlashcardsRequest {
  const _$GetFlashcardsRequestImpl({
    @JsonKey(name: "user_id") required this.userId,
    @JsonKey(name: "is_active") required this.isActive,
  });

  factory _$GetFlashcardsRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetFlashcardsRequestImplFromJson(json);

  @override
  @JsonKey(name: "user_id")
  final int userId;
  @override
  @JsonKey(name: "is_active")
  final int isActive;

  @override
  String toString() {
    return 'GetFlashcardsRequest(userId: $userId, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFlashcardsRequestImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, isActive);

  /// Create a copy of GetFlashcardsRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFlashcardsRequestImplCopyWith<_$GetFlashcardsRequestImpl>
  get copyWith =>
      __$$GetFlashcardsRequestImplCopyWithImpl<_$GetFlashcardsRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$GetFlashcardsRequestImplToJson(this);
  }
}

abstract class _GetFlashcardsRequest implements GetFlashcardsRequest {
  const factory _GetFlashcardsRequest({
    @JsonKey(name: "user_id") required final int userId,
    @JsonKey(name: "is_active") required final int isActive,
  }) = _$GetFlashcardsRequestImpl;

  factory _GetFlashcardsRequest.fromJson(Map<String, dynamic> json) =
      _$GetFlashcardsRequestImpl.fromJson;

  @override
  @JsonKey(name: "user_id")
  int get userId;
  @override
  @JsonKey(name: "is_active")
  int get isActive;

  /// Create a copy of GetFlashcardsRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetFlashcardsRequestImplCopyWith<_$GetFlashcardsRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}
