// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_account_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ForgotAccountResponse _$ForgotAccountResponseFromJson(
  Map<String, dynamic> json,
) {
  return _ForgotAccountResponse.fromJson(json);
}

/// @nodoc
mixin _$ForgotAccountResponse {
  @JsonKey(name: "success")
  bool get success => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;

  /// Serializes this ForgotAccountResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ForgotAccountResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForgotAccountResponseCopyWith<ForgotAccountResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotAccountResponseCopyWith<$Res> {
  factory $ForgotAccountResponseCopyWith(
    ForgotAccountResponse value,
    $Res Function(ForgotAccountResponse) then,
  ) = _$ForgotAccountResponseCopyWithImpl<$Res, ForgotAccountResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "success") bool success,
    @JsonKey(name: "message") String message,
  });
}

/// @nodoc
class _$ForgotAccountResponseCopyWithImpl<
  $Res,
  $Val extends ForgotAccountResponse
>
    implements $ForgotAccountResponseCopyWith<$Res> {
  _$ForgotAccountResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForgotAccountResponse
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
abstract class _$$ForgotAccountResponseImplCopyWith<$Res>
    implements $ForgotAccountResponseCopyWith<$Res> {
  factory _$$ForgotAccountResponseImplCopyWith(
    _$ForgotAccountResponseImpl value,
    $Res Function(_$ForgotAccountResponseImpl) then,
  ) = __$$ForgotAccountResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "success") bool success,
    @JsonKey(name: "message") String message,
  });
}

/// @nodoc
class __$$ForgotAccountResponseImplCopyWithImpl<$Res>
    extends
        _$ForgotAccountResponseCopyWithImpl<$Res, _$ForgotAccountResponseImpl>
    implements _$$ForgotAccountResponseImplCopyWith<$Res> {
  __$$ForgotAccountResponseImplCopyWithImpl(
    _$ForgotAccountResponseImpl _value,
    $Res Function(_$ForgotAccountResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ForgotAccountResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? message = null}) {
    return _then(
      _$ForgotAccountResponseImpl(
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
class _$ForgotAccountResponseImpl implements _ForgotAccountResponse {
  const _$ForgotAccountResponseImpl({
    @JsonKey(name: "success") required this.success,
    @JsonKey(name: "message") required this.message,
  });

  factory _$ForgotAccountResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForgotAccountResponseImplFromJson(json);

  @override
  @JsonKey(name: "success")
  final bool success;
  @override
  @JsonKey(name: "message")
  final String message;

  @override
  String toString() {
    return 'ForgotAccountResponse(success: $success, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotAccountResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message);

  /// Create a copy of ForgotAccountResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotAccountResponseImplCopyWith<_$ForgotAccountResponseImpl>
  get copyWith =>
      __$$ForgotAccountResponseImplCopyWithImpl<_$ForgotAccountResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ForgotAccountResponseImplToJson(this);
  }
}

abstract class _ForgotAccountResponse implements ForgotAccountResponse {
  const factory _ForgotAccountResponse({
    @JsonKey(name: "success") required final bool success,
    @JsonKey(name: "message") required final String message,
  }) = _$ForgotAccountResponseImpl;

  factory _ForgotAccountResponse.fromJson(Map<String, dynamic> json) =
      _$ForgotAccountResponseImpl.fromJson;

  @override
  @JsonKey(name: "success")
  bool get success;
  @override
  @JsonKey(name: "message")
  String get message;

  /// Create a copy of ForgotAccountResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForgotAccountResponseImplCopyWith<_$ForgotAccountResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
