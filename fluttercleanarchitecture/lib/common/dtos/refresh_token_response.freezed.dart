// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refresh_token_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RefreshTokenResponse _$RefreshTokenResponseFromJson(Map<String, dynamic> json) {
  return _RefreshTokenResponse.fromJson(json);
}

/// @nodoc
mixin _$RefreshTokenResponse {
  @JsonKey(name: "user")
  User get user => throw _privateConstructorUsedError;
  @JsonKey(name: "access_token")
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: "token_type")
  String get tokenType => throw _privateConstructorUsedError;

  /// Serializes this RefreshTokenResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RefreshTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefreshTokenResponseCopyWith<RefreshTokenResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefreshTokenResponseCopyWith<$Res> {
  factory $RefreshTokenResponseCopyWith(
    RefreshTokenResponse value,
    $Res Function(RefreshTokenResponse) then,
  ) = _$RefreshTokenResponseCopyWithImpl<$Res, RefreshTokenResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "user") User user,
    @JsonKey(name: "access_token") String accessToken,
    @JsonKey(name: "token_type") String tokenType,
  });

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$RefreshTokenResponseCopyWithImpl<
  $Res,
  $Val extends RefreshTokenResponse
>
    implements $RefreshTokenResponseCopyWith<$Res> {
  _$RefreshTokenResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefreshTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? accessToken = null,
    Object? tokenType = null,
  }) {
    return _then(
      _value.copyWith(
            user:
                null == user
                    ? _value.user
                    : user // ignore: cast_nullable_to_non_nullable
                        as User,
            accessToken:
                null == accessToken
                    ? _value.accessToken
                    : accessToken // ignore: cast_nullable_to_non_nullable
                        as String,
            tokenType:
                null == tokenType
                    ? _value.tokenType
                    : tokenType // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }

  /// Create a copy of RefreshTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RefreshTokenResponseImplCopyWith<$Res>
    implements $RefreshTokenResponseCopyWith<$Res> {
  factory _$$RefreshTokenResponseImplCopyWith(
    _$RefreshTokenResponseImpl value,
    $Res Function(_$RefreshTokenResponseImpl) then,
  ) = __$$RefreshTokenResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "user") User user,
    @JsonKey(name: "access_token") String accessToken,
    @JsonKey(name: "token_type") String tokenType,
  });

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$RefreshTokenResponseImplCopyWithImpl<$Res>
    extends _$RefreshTokenResponseCopyWithImpl<$Res, _$RefreshTokenResponseImpl>
    implements _$$RefreshTokenResponseImplCopyWith<$Res> {
  __$$RefreshTokenResponseImplCopyWithImpl(
    _$RefreshTokenResponseImpl _value,
    $Res Function(_$RefreshTokenResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RefreshTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? accessToken = null,
    Object? tokenType = null,
  }) {
    return _then(
      _$RefreshTokenResponseImpl(
        user:
            null == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                    as User,
        accessToken:
            null == accessToken
                ? _value.accessToken
                : accessToken // ignore: cast_nullable_to_non_nullable
                    as String,
        tokenType:
            null == tokenType
                ? _value.tokenType
                : tokenType // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RefreshTokenResponseImpl implements _RefreshTokenResponse {
  const _$RefreshTokenResponseImpl({
    @JsonKey(name: "user") required this.user,
    @JsonKey(name: "access_token") required this.accessToken,
    @JsonKey(name: "token_type") required this.tokenType,
  });

  factory _$RefreshTokenResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefreshTokenResponseImplFromJson(json);

  @override
  @JsonKey(name: "user")
  final User user;
  @override
  @JsonKey(name: "access_token")
  final String accessToken;
  @override
  @JsonKey(name: "token_type")
  final String tokenType;

  @override
  String toString() {
    return 'RefreshTokenResponse(user: $user, accessToken: $accessToken, tokenType: $tokenType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshTokenResponseImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user, accessToken, tokenType);

  /// Create a copy of RefreshTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshTokenResponseImplCopyWith<_$RefreshTokenResponseImpl>
  get copyWith =>
      __$$RefreshTokenResponseImplCopyWithImpl<_$RefreshTokenResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RefreshTokenResponseImplToJson(this);
  }
}

abstract class _RefreshTokenResponse implements RefreshTokenResponse {
  const factory _RefreshTokenResponse({
    @JsonKey(name: "user") required final User user,
    @JsonKey(name: "access_token") required final String accessToken,
    @JsonKey(name: "token_type") required final String tokenType,
  }) = _$RefreshTokenResponseImpl;

  factory _RefreshTokenResponse.fromJson(Map<String, dynamic> json) =
      _$RefreshTokenResponseImpl.fromJson;

  @override
  @JsonKey(name: "user")
  User get user;
  @override
  @JsonKey(name: "access_token")
  String get accessToken;
  @override
  @JsonKey(name: "token_type")
  String get tokenType;

  /// Create a copy of RefreshTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefreshTokenResponseImplCopyWith<_$RefreshTokenResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: "email_verified_at")
  DateTime get emailVerifiedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "otp_expires_at")
  DateTime get otpExpiresAt => throw _privateConstructorUsedError;
  @JsonKey(name: "verification_code")
  dynamic get verificationCode => throw _privateConstructorUsedError;
  @JsonKey(name: "role")
  String get role => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call({
    @JsonKey(name: "id") int id,
    @JsonKey(name: "name") String name,
    @JsonKey(name: "email") String email,
    @JsonKey(name: "email_verified_at") DateTime emailVerifiedAt,
    @JsonKey(name: "otp_expires_at") DateTime otpExpiresAt,
    @JsonKey(name: "verification_code") dynamic verificationCode,
    @JsonKey(name: "role") String role,
    @JsonKey(name: "created_at") DateTime createdAt,
    @JsonKey(name: "updated_at") DateTime updatedAt,
  });
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? emailVerifiedAt = null,
    Object? otpExpiresAt = null,
    Object? verificationCode = freezed,
    Object? role = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            email:
                null == email
                    ? _value.email
                    : email // ignore: cast_nullable_to_non_nullable
                        as String,
            emailVerifiedAt:
                null == emailVerifiedAt
                    ? _value.emailVerifiedAt
                    : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            otpExpiresAt:
                null == otpExpiresAt
                    ? _value.otpExpiresAt
                    : otpExpiresAt // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            verificationCode:
                freezed == verificationCode
                    ? _value.verificationCode
                    : verificationCode // ignore: cast_nullable_to_non_nullable
                        as dynamic,
            role:
                null == role
                    ? _value.role
                    : role // ignore: cast_nullable_to_non_nullable
                        as String,
            createdAt:
                null == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            updatedAt:
                null == updatedAt
                    ? _value.updatedAt
                    : updatedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
    _$UserImpl value,
    $Res Function(_$UserImpl) then,
  ) = __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "id") int id,
    @JsonKey(name: "name") String name,
    @JsonKey(name: "email") String email,
    @JsonKey(name: "email_verified_at") DateTime emailVerifiedAt,
    @JsonKey(name: "otp_expires_at") DateTime otpExpiresAt,
    @JsonKey(name: "verification_code") dynamic verificationCode,
    @JsonKey(name: "role") String role,
    @JsonKey(name: "created_at") DateTime createdAt,
    @JsonKey(name: "updated_at") DateTime updatedAt,
  });
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
    : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? emailVerifiedAt = null,
    Object? otpExpiresAt = null,
    Object? verificationCode = freezed,
    Object? role = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$UserImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        email:
            null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                    as String,
        emailVerifiedAt:
            null == emailVerifiedAt
                ? _value.emailVerifiedAt
                : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        otpExpiresAt:
            null == otpExpiresAt
                ? _value.otpExpiresAt
                : otpExpiresAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        verificationCode:
            freezed == verificationCode
                ? _value.verificationCode
                : verificationCode // ignore: cast_nullable_to_non_nullable
                    as dynamic,
        role:
            null == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                    as String,
        createdAt:
            null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        updatedAt:
            null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl({
    @JsonKey(name: "id") required this.id,
    @JsonKey(name: "name") required this.name,
    @JsonKey(name: "email") required this.email,
    @JsonKey(name: "email_verified_at") required this.emailVerifiedAt,
    @JsonKey(name: "otp_expires_at") required this.otpExpiresAt,
    @JsonKey(name: "verification_code") required this.verificationCode,
    @JsonKey(name: "role") required this.role,
    @JsonKey(name: "created_at") required this.createdAt,
    @JsonKey(name: "updated_at") required this.updatedAt,
  });

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "email")
  final String email;
  @override
  @JsonKey(name: "email_verified_at")
  final DateTime emailVerifiedAt;
  @override
  @JsonKey(name: "otp_expires_at")
  final DateTime otpExpiresAt;
  @override
  @JsonKey(name: "verification_code")
  final dynamic verificationCode;
  @override
  @JsonKey(name: "role")
  final String role;
  @override
  @JsonKey(name: "created_at")
  final DateTime createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime updatedAt;

  @override
  String toString() {
    return 'User(id: $id, name: $name, email: $email, emailVerifiedAt: $emailVerifiedAt, otpExpiresAt: $otpExpiresAt, verificationCode: $verificationCode, role: $role, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.emailVerifiedAt, emailVerifiedAt) ||
                other.emailVerifiedAt == emailVerifiedAt) &&
            (identical(other.otpExpiresAt, otpExpiresAt) ||
                other.otpExpiresAt == otpExpiresAt) &&
            const DeepCollectionEquality().equals(
              other.verificationCode,
              verificationCode,
            ) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    email,
    emailVerifiedAt,
    otpExpiresAt,
    const DeepCollectionEquality().hash(verificationCode),
    role,
    createdAt,
    updatedAt,
  );

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(this);
  }
}

abstract class _User implements User {
  const factory _User({
    @JsonKey(name: "id") required final int id,
    @JsonKey(name: "name") required final String name,
    @JsonKey(name: "email") required final String email,
    @JsonKey(name: "email_verified_at") required final DateTime emailVerifiedAt,
    @JsonKey(name: "otp_expires_at") required final DateTime otpExpiresAt,
    @JsonKey(name: "verification_code") required final dynamic verificationCode,
    @JsonKey(name: "role") required final String role,
    @JsonKey(name: "created_at") required final DateTime createdAt,
    @JsonKey(name: "updated_at") required final DateTime updatedAt,
  }) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "email")
  String get email;
  @override
  @JsonKey(name: "email_verified_at")
  DateTime get emailVerifiedAt;
  @override
  @JsonKey(name: "otp_expires_at")
  DateTime get otpExpiresAt;
  @override
  @JsonKey(name: "verification_code")
  dynamic get verificationCode;
  @override
  @JsonKey(name: "role")
  String get role;
  @override
  @JsonKey(name: "created_at")
  DateTime get createdAt;
  @override
  @JsonKey(name: "updated_at")
  DateTime get updatedAt;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
