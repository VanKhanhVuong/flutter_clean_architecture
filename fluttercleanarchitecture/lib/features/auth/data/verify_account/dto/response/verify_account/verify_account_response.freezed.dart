// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_account_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

VerifyAccountResponse _$VerifyAccountResponseFromJson(
  Map<String, dynamic> json,
) {
  return _VerifyAccountResponse.fromJson(json);
}

/// @nodoc
mixin _$VerifyAccountResponse {
  @JsonKey(name: "success")
  bool get success => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;

  /// Serializes this VerifyAccountResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VerifyAccountResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerifyAccountResponseCopyWith<VerifyAccountResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyAccountResponseCopyWith<$Res> {
  factory $VerifyAccountResponseCopyWith(
    VerifyAccountResponse value,
    $Res Function(VerifyAccountResponse) then,
  ) = _$VerifyAccountResponseCopyWithImpl<$Res, VerifyAccountResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "success") bool success,
    @JsonKey(name: "message") String message,
  });
}

/// @nodoc
class _$VerifyAccountResponseCopyWithImpl<
  $Res,
  $Val extends VerifyAccountResponse
>
    implements $VerifyAccountResponseCopyWith<$Res> {
  _$VerifyAccountResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerifyAccountResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? message = null}) {
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$VerifyAccountResponseImplCopyWith<$Res>
    implements $VerifyAccountResponseCopyWith<$Res> {
  factory _$$VerifyAccountResponseImplCopyWith(
    _$VerifyAccountResponseImpl value,
    $Res Function(_$VerifyAccountResponseImpl) then,
  ) = __$$VerifyAccountResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "success") bool success,
    @JsonKey(name: "message") String message,
  });
}

/// @nodoc
class __$$VerifyAccountResponseImplCopyWithImpl<$Res>
    extends
        _$VerifyAccountResponseCopyWithImpl<$Res, _$VerifyAccountResponseImpl>
    implements _$$VerifyAccountResponseImplCopyWith<$Res> {
  __$$VerifyAccountResponseImplCopyWithImpl(
    _$VerifyAccountResponseImpl _value,
    $Res Function(_$VerifyAccountResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VerifyAccountResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? message = null}) {
    return _then(
      _$VerifyAccountResponseImpl(
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyAccountResponseImpl implements _VerifyAccountResponse {
  const _$VerifyAccountResponseImpl({
    @JsonKey(name: "success") required this.success,
    @JsonKey(name: "message") required this.message,
  });

  factory _$VerifyAccountResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyAccountResponseImplFromJson(json);

  @override
  @JsonKey(name: "success")
  final bool success;
  @override
  @JsonKey(name: "message")
  final String message;

  @override
  String toString() {
    return 'VerifyAccountResponse(success: $success, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyAccountResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message);

  /// Create a copy of VerifyAccountResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyAccountResponseImplCopyWith<_$VerifyAccountResponseImpl>
  get copyWith =>
      __$$VerifyAccountResponseImplCopyWithImpl<_$VerifyAccountResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyAccountResponseImplToJson(this);
  }
}

abstract class _VerifyAccountResponse implements VerifyAccountResponse {
  const factory _VerifyAccountResponse({
    @JsonKey(name: "success") required final bool success,
    @JsonKey(name: "message") required final String message,
  }) = _$VerifyAccountResponseImpl;

  factory _VerifyAccountResponse.fromJson(Map<String, dynamic> json) =
      _$VerifyAccountResponseImpl.fromJson;

  @override
  @JsonKey(name: "success")
  bool get success;
  @override
  @JsonKey(name: "message")
  String get message;

  /// Create a copy of VerifyAccountResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyAccountResponseImplCopyWith<_$VerifyAccountResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
