// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_account_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ForgotAccountRequest _$ForgotAccountRequestFromJson(Map<String, dynamic> json) {
  return _ForgotAccountRequest.fromJson(json);
}

/// @nodoc
mixin _$ForgotAccountRequest {
  @JsonKey(name: "email")
  String get email => throw _privateConstructorUsedError;

  /// Serializes this ForgotAccountRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ForgotAccountRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForgotAccountRequestCopyWith<ForgotAccountRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotAccountRequestCopyWith<$Res> {
  factory $ForgotAccountRequestCopyWith(
    ForgotAccountRequest value,
    $Res Function(ForgotAccountRequest) then,
  ) = _$ForgotAccountRequestCopyWithImpl<$Res, ForgotAccountRequest>;
  @useResult
  $Res call({@JsonKey(name: "email") String email});
}

/// @nodoc
class _$ForgotAccountRequestCopyWithImpl<
  $Res,
  $Val extends ForgotAccountRequest
>
    implements $ForgotAccountRequestCopyWith<$Res> {
  _$ForgotAccountRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForgotAccountRequest
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
abstract class _$$ForgotAccountRequestImplCopyWith<$Res>
    implements $ForgotAccountRequestCopyWith<$Res> {
  factory _$$ForgotAccountRequestImplCopyWith(
    _$ForgotAccountRequestImpl value,
    $Res Function(_$ForgotAccountRequestImpl) then,
  ) = __$$ForgotAccountRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "email") String email});
}

/// @nodoc
class __$$ForgotAccountRequestImplCopyWithImpl<$Res>
    extends _$ForgotAccountRequestCopyWithImpl<$Res, _$ForgotAccountRequestImpl>
    implements _$$ForgotAccountRequestImplCopyWith<$Res> {
  __$$ForgotAccountRequestImplCopyWithImpl(
    _$ForgotAccountRequestImpl _value,
    $Res Function(_$ForgotAccountRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ForgotAccountRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null}) {
    return _then(
      _$ForgotAccountRequestImpl(
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
class _$ForgotAccountRequestImpl implements _ForgotAccountRequest {
  const _$ForgotAccountRequestImpl({
    @JsonKey(name: "email") required this.email,
  });

  factory _$ForgotAccountRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForgotAccountRequestImplFromJson(json);

  @override
  @JsonKey(name: "email")
  final String email;

  @override
  String toString() {
    return 'ForgotAccountRequest(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotAccountRequestImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of ForgotAccountRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotAccountRequestImplCopyWith<_$ForgotAccountRequestImpl>
  get copyWith =>
      __$$ForgotAccountRequestImplCopyWithImpl<_$ForgotAccountRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ForgotAccountRequestImplToJson(this);
  }
}

abstract class _ForgotAccountRequest implements ForgotAccountRequest {
  const factory _ForgotAccountRequest({
    @JsonKey(name: "email") required final String email,
  }) = _$ForgotAccountRequestImpl;

  factory _ForgotAccountRequest.fromJson(Map<String, dynamic> json) =
      _$ForgotAccountRequestImpl.fromJson;

  @override
  @JsonKey(name: "email")
  String get email;

  /// Create a copy of ForgotAccountRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForgotAccountRequestImplCopyWith<_$ForgotAccountRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}
