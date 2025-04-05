// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_account_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

VerifyAccountRequest _$VerifyAccountRequestFromJson(Map<String, dynamic> json) {
  return _VerifyAccountRequest.fromJson(json);
}

/// @nodoc
mixin _$VerifyAccountRequest {
  @JsonKey(name: "email")
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: "otp")
  String get otp => throw _privateConstructorUsedError;

  /// Serializes this VerifyAccountRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VerifyAccountRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerifyAccountRequestCopyWith<VerifyAccountRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyAccountRequestCopyWith<$Res> {
  factory $VerifyAccountRequestCopyWith(
    VerifyAccountRequest value,
    $Res Function(VerifyAccountRequest) then,
  ) = _$VerifyAccountRequestCopyWithImpl<$Res, VerifyAccountRequest>;
  @useResult
  $Res call({
    @JsonKey(name: "email") String email,
    @JsonKey(name: "otp") String otp,
  });
}

/// @nodoc
class _$VerifyAccountRequestCopyWithImpl<
  $Res,
  $Val extends VerifyAccountRequest
>
    implements $VerifyAccountRequestCopyWith<$Res> {
  _$VerifyAccountRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerifyAccountRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null, Object? otp = null}) {
    return _then(
      _value.copyWith(
            email:
                null == email
                    ? _value.email
                    : email // ignore: cast_nullable_to_non_nullable
                        as String,
            otp:
                null == otp
                    ? _value.otp
                    : otp // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$VerifyAccountRequestImplCopyWith<$Res>
    implements $VerifyAccountRequestCopyWith<$Res> {
  factory _$$VerifyAccountRequestImplCopyWith(
    _$VerifyAccountRequestImpl value,
    $Res Function(_$VerifyAccountRequestImpl) then,
  ) = __$$VerifyAccountRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "email") String email,
    @JsonKey(name: "otp") String otp,
  });
}

/// @nodoc
class __$$VerifyAccountRequestImplCopyWithImpl<$Res>
    extends _$VerifyAccountRequestCopyWithImpl<$Res, _$VerifyAccountRequestImpl>
    implements _$$VerifyAccountRequestImplCopyWith<$Res> {
  __$$VerifyAccountRequestImplCopyWithImpl(
    _$VerifyAccountRequestImpl _value,
    $Res Function(_$VerifyAccountRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VerifyAccountRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null, Object? otp = null}) {
    return _then(
      _$VerifyAccountRequestImpl(
        email:
            null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                    as String,
        otp:
            null == otp
                ? _value.otp
                : otp // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyAccountRequestImpl implements _VerifyAccountRequest {
  const _$VerifyAccountRequestImpl({
    @JsonKey(name: "email") required this.email,
    @JsonKey(name: "otp") required this.otp,
  });

  factory _$VerifyAccountRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyAccountRequestImplFromJson(json);

  @override
  @JsonKey(name: "email")
  final String email;
  @override
  @JsonKey(name: "otp")
  final String otp;

  @override
  String toString() {
    return 'VerifyAccountRequest(email: $email, otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyAccountRequestImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, otp);

  /// Create a copy of VerifyAccountRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyAccountRequestImplCopyWith<_$VerifyAccountRequestImpl>
  get copyWith =>
      __$$VerifyAccountRequestImplCopyWithImpl<_$VerifyAccountRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyAccountRequestImplToJson(this);
  }
}

abstract class _VerifyAccountRequest implements VerifyAccountRequest {
  const factory _VerifyAccountRequest({
    @JsonKey(name: "email") required final String email,
    @JsonKey(name: "otp") required final String otp,
  }) = _$VerifyAccountRequestImpl;

  factory _VerifyAccountRequest.fromJson(Map<String, dynamic> json) =
      _$VerifyAccountRequestImpl.fromJson;

  @override
  @JsonKey(name: "email")
  String get email;
  @override
  @JsonKey(name: "otp")
  String get otp;

  /// Create a copy of VerifyAccountRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyAccountRequestImplCopyWith<_$VerifyAccountRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}
