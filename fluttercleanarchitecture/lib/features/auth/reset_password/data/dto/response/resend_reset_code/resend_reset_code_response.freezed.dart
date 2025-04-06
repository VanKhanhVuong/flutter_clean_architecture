// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resend_reset_code_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ResendResetCodeResponse _$ResendResetCodeResponseFromJson(
  Map<String, dynamic> json,
) {
  return _ResendResetCodeResponse.fromJson(json);
}

/// @nodoc
mixin _$ResendResetCodeResponse {
  @JsonKey(name: "success")
  bool get success => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;

  /// Serializes this ResendResetCodeResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResendResetCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResendResetCodeResponseCopyWith<ResendResetCodeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResendResetCodeResponseCopyWith<$Res> {
  factory $ResendResetCodeResponseCopyWith(
    ResendResetCodeResponse value,
    $Res Function(ResendResetCodeResponse) then,
  ) = _$ResendResetCodeResponseCopyWithImpl<$Res, ResendResetCodeResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "success") bool success,
    @JsonKey(name: "message") String message,
  });
}

/// @nodoc
class _$ResendResetCodeResponseCopyWithImpl<
  $Res,
  $Val extends ResendResetCodeResponse
>
    implements $ResendResetCodeResponseCopyWith<$Res> {
  _$ResendResetCodeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResendResetCodeResponse
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
abstract class _$$ResendResetCodeResponseImplCopyWith<$Res>
    implements $ResendResetCodeResponseCopyWith<$Res> {
  factory _$$ResendResetCodeResponseImplCopyWith(
    _$ResendResetCodeResponseImpl value,
    $Res Function(_$ResendResetCodeResponseImpl) then,
  ) = __$$ResendResetCodeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "success") bool success,
    @JsonKey(name: "message") String message,
  });
}

/// @nodoc
class __$$ResendResetCodeResponseImplCopyWithImpl<$Res>
    extends
        _$ResendResetCodeResponseCopyWithImpl<
          $Res,
          _$ResendResetCodeResponseImpl
        >
    implements _$$ResendResetCodeResponseImplCopyWith<$Res> {
  __$$ResendResetCodeResponseImplCopyWithImpl(
    _$ResendResetCodeResponseImpl _value,
    $Res Function(_$ResendResetCodeResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ResendResetCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? message = null}) {
    return _then(
      _$ResendResetCodeResponseImpl(
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
class _$ResendResetCodeResponseImpl implements _ResendResetCodeResponse {
  const _$ResendResetCodeResponseImpl({
    @JsonKey(name: "success") required this.success,
    @JsonKey(name: "message") required this.message,
  });

  factory _$ResendResetCodeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResendResetCodeResponseImplFromJson(json);

  @override
  @JsonKey(name: "success")
  final bool success;
  @override
  @JsonKey(name: "message")
  final String message;

  @override
  String toString() {
    return 'ResendResetCodeResponse(success: $success, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResendResetCodeResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message);

  /// Create a copy of ResendResetCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResendResetCodeResponseImplCopyWith<_$ResendResetCodeResponseImpl>
  get copyWith => __$$ResendResetCodeResponseImplCopyWithImpl<
    _$ResendResetCodeResponseImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResendResetCodeResponseImplToJson(this);
  }
}

abstract class _ResendResetCodeResponse implements ResendResetCodeResponse {
  const factory _ResendResetCodeResponse({
    @JsonKey(name: "success") required final bool success,
    @JsonKey(name: "message") required final String message,
  }) = _$ResendResetCodeResponseImpl;

  factory _ResendResetCodeResponse.fromJson(Map<String, dynamic> json) =
      _$ResendResetCodeResponseImpl.fromJson;

  @override
  @JsonKey(name: "success")
  bool get success;
  @override
  @JsonKey(name: "message")
  String get message;

  /// Create a copy of ResendResetCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResendResetCodeResponseImplCopyWith<_$ResendResetCodeResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
