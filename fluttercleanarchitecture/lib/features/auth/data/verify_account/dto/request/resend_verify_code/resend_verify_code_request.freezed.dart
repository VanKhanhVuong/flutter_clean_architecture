// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resend_verify_code_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ResendVerifyCodeRequest _$ResendVerifyCodeRequestFromJson(
  Map<String, dynamic> json,
) {
  return _ResendVerifyCodeRequest.fromJson(json);
}

/// @nodoc
mixin _$ResendVerifyCodeRequest {
  @JsonKey(name: "email")
  String get email => throw _privateConstructorUsedError;

  /// Serializes this ResendVerifyCodeRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResendVerifyCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResendVerifyCodeRequestCopyWith<ResendVerifyCodeRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResendVerifyCodeRequestCopyWith<$Res> {
  factory $ResendVerifyCodeRequestCopyWith(
    ResendVerifyCodeRequest value,
    $Res Function(ResendVerifyCodeRequest) then,
  ) = _$ResendVerifyCodeRequestCopyWithImpl<$Res, ResendVerifyCodeRequest>;
  @useResult
  $Res call({@JsonKey(name: "email") String email});
}

/// @nodoc
class _$ResendVerifyCodeRequestCopyWithImpl<
  $Res,
  $Val extends ResendVerifyCodeRequest
>
    implements $ResendVerifyCodeRequestCopyWith<$Res> {
  _$ResendVerifyCodeRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResendVerifyCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null}) {
    return _then(
      _value.copyWith(
            email:
                null == email
                    ? _value.email
                    : email // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ResendVerifyCodeRequestImplCopyWith<$Res>
    implements $ResendVerifyCodeRequestCopyWith<$Res> {
  factory _$$ResendVerifyCodeRequestImplCopyWith(
    _$ResendVerifyCodeRequestImpl value,
    $Res Function(_$ResendVerifyCodeRequestImpl) then,
  ) = __$$ResendVerifyCodeRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "email") String email});
}

/// @nodoc
class __$$ResendVerifyCodeRequestImplCopyWithImpl<$Res>
    extends
        _$ResendVerifyCodeRequestCopyWithImpl<
          $Res,
          _$ResendVerifyCodeRequestImpl
        >
    implements _$$ResendVerifyCodeRequestImplCopyWith<$Res> {
  __$$ResendVerifyCodeRequestImplCopyWithImpl(
    _$ResendVerifyCodeRequestImpl _value,
    $Res Function(_$ResendVerifyCodeRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ResendVerifyCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null}) {
    return _then(
      _$ResendVerifyCodeRequestImpl(
        email:
            null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ResendVerifyCodeRequestImpl implements _ResendVerifyCodeRequest {
  const _$ResendVerifyCodeRequestImpl({
    @JsonKey(name: "email") required this.email,
  });

  factory _$ResendVerifyCodeRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResendVerifyCodeRequestImplFromJson(json);

  @override
  @JsonKey(name: "email")
  final String email;

  @override
  String toString() {
    return 'ResendVerifyCodeRequest(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResendVerifyCodeRequestImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of ResendVerifyCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResendVerifyCodeRequestImplCopyWith<_$ResendVerifyCodeRequestImpl>
  get copyWith => __$$ResendVerifyCodeRequestImplCopyWithImpl<
    _$ResendVerifyCodeRequestImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResendVerifyCodeRequestImplToJson(this);
  }
}

abstract class _ResendVerifyCodeRequest implements ResendVerifyCodeRequest {
  const factory _ResendVerifyCodeRequest({
    @JsonKey(name: "email") required final String email,
  }) = _$ResendVerifyCodeRequestImpl;

  factory _ResendVerifyCodeRequest.fromJson(Map<String, dynamic> json) =
      _$ResendVerifyCodeRequestImpl.fromJson;

  @override
  @JsonKey(name: "email")
  String get email;

  /// Create a copy of ResendVerifyCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResendVerifyCodeRequestImplCopyWith<_$ResendVerifyCodeRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}
