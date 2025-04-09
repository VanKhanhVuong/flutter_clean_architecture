// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resend_verify_code_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ResendVerifyCodeResponse _$ResendVerifyCodeResponseFromJson(
  Map<String, dynamic> json,
) {
  return _ResendVerifyCodeResponse.fromJson(json);
}

/// @nodoc
mixin _$ResendVerifyCodeResponse {
  @JsonKey(name: "success")
  bool get success => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;

  /// Serializes this ResendVerifyCodeResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResendVerifyCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResendVerifyCodeResponseCopyWith<ResendVerifyCodeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResendVerifyCodeResponseCopyWith<$Res> {
  factory $ResendVerifyCodeResponseCopyWith(
    ResendVerifyCodeResponse value,
    $Res Function(ResendVerifyCodeResponse) then,
  ) = _$ResendVerifyCodeResponseCopyWithImpl<$Res, ResendVerifyCodeResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "success") bool success,
    @JsonKey(name: "message") String message,
  });
}

/// @nodoc
class _$ResendVerifyCodeResponseCopyWithImpl<
  $Res,
  $Val extends ResendVerifyCodeResponse
>
    implements $ResendVerifyCodeResponseCopyWith<$Res> {
  _$ResendVerifyCodeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResendVerifyCodeResponse
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
abstract class _$$ResendVerifyCodeResponseImplCopyWith<$Res>
    implements $ResendVerifyCodeResponseCopyWith<$Res> {
  factory _$$ResendVerifyCodeResponseImplCopyWith(
    _$ResendVerifyCodeResponseImpl value,
    $Res Function(_$ResendVerifyCodeResponseImpl) then,
  ) = __$$ResendVerifyCodeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "success") bool success,
    @JsonKey(name: "message") String message,
  });
}

/// @nodoc
class __$$ResendVerifyCodeResponseImplCopyWithImpl<$Res>
    extends
        _$ResendVerifyCodeResponseCopyWithImpl<
          $Res,
          _$ResendVerifyCodeResponseImpl
        >
    implements _$$ResendVerifyCodeResponseImplCopyWith<$Res> {
  __$$ResendVerifyCodeResponseImplCopyWithImpl(
    _$ResendVerifyCodeResponseImpl _value,
    $Res Function(_$ResendVerifyCodeResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ResendVerifyCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? message = null}) {
    return _then(
      _$ResendVerifyCodeResponseImpl(
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
class _$ResendVerifyCodeResponseImpl implements _ResendVerifyCodeResponse {
  const _$ResendVerifyCodeResponseImpl({
    @JsonKey(name: "success") required this.success,
    @JsonKey(name: "message") required this.message,
  });

  factory _$ResendVerifyCodeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResendVerifyCodeResponseImplFromJson(json);

  @override
  @JsonKey(name: "success")
  final bool success;
  @override
  @JsonKey(name: "message")
  final String message;

  @override
  String toString() {
    return 'ResendVerifyCodeResponse(success: $success, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResendVerifyCodeResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message);

  /// Create a copy of ResendVerifyCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResendVerifyCodeResponseImplCopyWith<_$ResendVerifyCodeResponseImpl>
  get copyWith => __$$ResendVerifyCodeResponseImplCopyWithImpl<
    _$ResendVerifyCodeResponseImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResendVerifyCodeResponseImplToJson(this);
  }
}

abstract class _ResendVerifyCodeResponse implements ResendVerifyCodeResponse {
  const factory _ResendVerifyCodeResponse({
    @JsonKey(name: "success") required final bool success,
    @JsonKey(name: "message") required final String message,
  }) = _$ResendVerifyCodeResponseImpl;

  factory _ResendVerifyCodeResponse.fromJson(Map<String, dynamic> json) =
      _$ResendVerifyCodeResponseImpl.fromJson;

  @override
  @JsonKey(name: "success")
  bool get success;
  @override
  @JsonKey(name: "message")
  String get message;

  /// Create a copy of ResendVerifyCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResendVerifyCodeResponseImplCopyWith<_$ResendVerifyCodeResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
