// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_account_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DeleteAccountRequest _$DeleteAccountRequestFromJson(Map<String, dynamic> json) {
  return _DeleteAccountRequest.fromJson(json);
}

/// @nodoc
mixin _$DeleteAccountRequest {
  @JsonKey(name: "email")
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: "password")
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: "password_confirmation")
  String get passwordConfirmation => throw _privateConstructorUsedError;

  /// Serializes this DeleteAccountRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeleteAccountRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteAccountRequestCopyWith<DeleteAccountRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteAccountRequestCopyWith<$Res> {
  factory $DeleteAccountRequestCopyWith(
    DeleteAccountRequest value,
    $Res Function(DeleteAccountRequest) then,
  ) = _$DeleteAccountRequestCopyWithImpl<$Res, DeleteAccountRequest>;
  @useResult
  $Res call({
    @JsonKey(name: "email") String email,
    @JsonKey(name: "password") String password,
    @JsonKey(name: "password_confirmation") String passwordConfirmation,
  });
}

/// @nodoc
class _$DeleteAccountRequestCopyWithImpl<
  $Res,
  $Val extends DeleteAccountRequest
>
    implements $DeleteAccountRequestCopyWith<$Res> {
  _$DeleteAccountRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteAccountRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? passwordConfirmation = null,
  }) {
    return _then(
      _value.copyWith(
            email:
                null == email
                    ? _value.email
                    : email // ignore: cast_nullable_to_non_nullable
                        as String,
            password:
                null == password
                    ? _value.password
                    : password // ignore: cast_nullable_to_non_nullable
                        as String,
            passwordConfirmation:
                null == passwordConfirmation
                    ? _value.passwordConfirmation
                    : passwordConfirmation // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DeleteAccountRequestImplCopyWith<$Res>
    implements $DeleteAccountRequestCopyWith<$Res> {
  factory _$$DeleteAccountRequestImplCopyWith(
    _$DeleteAccountRequestImpl value,
    $Res Function(_$DeleteAccountRequestImpl) then,
  ) = __$$DeleteAccountRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "email") String email,
    @JsonKey(name: "password") String password,
    @JsonKey(name: "password_confirmation") String passwordConfirmation,
  });
}

/// @nodoc
class __$$DeleteAccountRequestImplCopyWithImpl<$Res>
    extends _$DeleteAccountRequestCopyWithImpl<$Res, _$DeleteAccountRequestImpl>
    implements _$$DeleteAccountRequestImplCopyWith<$Res> {
  __$$DeleteAccountRequestImplCopyWithImpl(
    _$DeleteAccountRequestImpl _value,
    $Res Function(_$DeleteAccountRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeleteAccountRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? passwordConfirmation = null,
  }) {
    return _then(
      _$DeleteAccountRequestImpl(
        email:
            null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                    as String,
        password:
            null == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                    as String,
        passwordConfirmation:
            null == passwordConfirmation
                ? _value.passwordConfirmation
                : passwordConfirmation // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteAccountRequestImpl implements _DeleteAccountRequest {
  const _$DeleteAccountRequestImpl({
    @JsonKey(name: "email") required this.email,
    @JsonKey(name: "password") required this.password,
    @JsonKey(name: "password_confirmation") required this.passwordConfirmation,
  });

  factory _$DeleteAccountRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteAccountRequestImplFromJson(json);

  @override
  @JsonKey(name: "email")
  final String email;
  @override
  @JsonKey(name: "password")
  final String password;
  @override
  @JsonKey(name: "password_confirmation")
  final String passwordConfirmation;

  @override
  String toString() {
    return 'DeleteAccountRequest(email: $email, password: $password, passwordConfirmation: $passwordConfirmation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteAccountRequestImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordConfirmation, passwordConfirmation) ||
                other.passwordConfirmation == passwordConfirmation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, email, password, passwordConfirmation);

  /// Create a copy of DeleteAccountRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteAccountRequestImplCopyWith<_$DeleteAccountRequestImpl>
  get copyWith =>
      __$$DeleteAccountRequestImplCopyWithImpl<_$DeleteAccountRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteAccountRequestImplToJson(this);
  }
}

abstract class _DeleteAccountRequest implements DeleteAccountRequest {
  const factory _DeleteAccountRequest({
    @JsonKey(name: "email") required final String email,
    @JsonKey(name: "password") required final String password,
    @JsonKey(name: "password_confirmation")
    required final String passwordConfirmation,
  }) = _$DeleteAccountRequestImpl;

  factory _DeleteAccountRequest.fromJson(Map<String, dynamic> json) =
      _$DeleteAccountRequestImpl.fromJson;

  @override
  @JsonKey(name: "email")
  String get email;
  @override
  @JsonKey(name: "password")
  String get password;
  @override
  @JsonKey(name: "password_confirmation")
  String get passwordConfirmation;

  /// Create a copy of DeleteAccountRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteAccountRequestImplCopyWith<_$DeleteAccountRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}
