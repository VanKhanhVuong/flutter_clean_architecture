// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

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
  @JsonKey(name: "email_verified_at", fromJson: _fromJsonDateTime)
  DateTime? get emailVerifiedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "otp_expires_at", fromJson: _fromJsonCustomDateTime)
  DateTime? get otpExpiresAt => throw _privateConstructorUsedError;
  @JsonKey(name: "verification_code")
  int? get verificationCode => throw _privateConstructorUsedError;
  @JsonKey(name: "role")
  String get role => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at", fromJson: _fromJsonDateTime)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at", fromJson: _fromJsonDateTime)
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
    @JsonKey(name: "email_verified_at", fromJson: _fromJsonDateTime)
    DateTime? emailVerifiedAt,
    @JsonKey(name: "otp_expires_at", fromJson: _fromJsonCustomDateTime)
    DateTime? otpExpiresAt,
    @JsonKey(name: "verification_code") int? verificationCode,
    @JsonKey(name: "role") String role,
    @JsonKey(name: "created_at", fromJson: _fromJsonDateTime)
    DateTime createdAt,
    @JsonKey(name: "updated_at", fromJson: _fromJsonDateTime)
    DateTime updatedAt,
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
    Object? emailVerifiedAt = freezed,
    Object? otpExpiresAt = freezed,
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
                freezed == emailVerifiedAt
                    ? _value.emailVerifiedAt
                    : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            otpExpiresAt:
                freezed == otpExpiresAt
                    ? _value.otpExpiresAt
                    : otpExpiresAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            verificationCode:
                freezed == verificationCode
                    ? _value.verificationCode
                    : verificationCode // ignore: cast_nullable_to_non_nullable
                        as int?,
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
    @JsonKey(name: "email_verified_at", fromJson: _fromJsonDateTime)
    DateTime? emailVerifiedAt,
    @JsonKey(name: "otp_expires_at", fromJson: _fromJsonCustomDateTime)
    DateTime? otpExpiresAt,
    @JsonKey(name: "verification_code") int? verificationCode,
    @JsonKey(name: "role") String role,
    @JsonKey(name: "created_at", fromJson: _fromJsonDateTime)
    DateTime createdAt,
    @JsonKey(name: "updated_at", fromJson: _fromJsonDateTime)
    DateTime updatedAt,
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
    Object? emailVerifiedAt = freezed,
    Object? otpExpiresAt = freezed,
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
            freezed == emailVerifiedAt
                ? _value.emailVerifiedAt
                : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        otpExpiresAt:
            freezed == otpExpiresAt
                ? _value.otpExpiresAt
                : otpExpiresAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        verificationCode:
            freezed == verificationCode
                ? _value.verificationCode
                : verificationCode // ignore: cast_nullable_to_non_nullable
                    as int?,
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
    @JsonKey(name: "email_verified_at", fromJson: _fromJsonDateTime)
    this.emailVerifiedAt,
    @JsonKey(name: "otp_expires_at", fromJson: _fromJsonCustomDateTime)
    this.otpExpiresAt,
    @JsonKey(name: "verification_code") this.verificationCode,
    @JsonKey(name: "role") required this.role,
    @JsonKey(name: "created_at", fromJson: _fromJsonDateTime)
    required this.createdAt,
    @JsonKey(name: "updated_at", fromJson: _fromJsonDateTime)
    required this.updatedAt,
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
  @JsonKey(name: "email_verified_at", fromJson: _fromJsonDateTime)
  final DateTime? emailVerifiedAt;
  @override
  @JsonKey(name: "otp_expires_at", fromJson: _fromJsonCustomDateTime)
  final DateTime? otpExpiresAt;
  @override
  @JsonKey(name: "verification_code")
  final int? verificationCode;
  @override
  @JsonKey(name: "role")
  final String role;
  @override
  @JsonKey(name: "created_at", fromJson: _fromJsonDateTime)
  final DateTime createdAt;
  @override
  @JsonKey(name: "updated_at", fromJson: _fromJsonDateTime)
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
            (identical(other.verificationCode, verificationCode) ||
                other.verificationCode == verificationCode) &&
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
    verificationCode,
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
    @JsonKey(name: "email_verified_at", fromJson: _fromJsonDateTime)
    final DateTime? emailVerifiedAt,
    @JsonKey(name: "otp_expires_at", fromJson: _fromJsonCustomDateTime)
    final DateTime? otpExpiresAt,
    @JsonKey(name: "verification_code") final int? verificationCode,
    @JsonKey(name: "role") required final String role,
    @JsonKey(name: "created_at", fromJson: _fromJsonDateTime)
    required final DateTime createdAt,
    @JsonKey(name: "updated_at", fromJson: _fromJsonDateTime)
    required final DateTime updatedAt,
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
  @JsonKey(name: "email_verified_at", fromJson: _fromJsonDateTime)
  DateTime? get emailVerifiedAt;
  @override
  @JsonKey(name: "otp_expires_at", fromJson: _fromJsonCustomDateTime)
  DateTime? get otpExpiresAt;
  @override
  @JsonKey(name: "verification_code")
  int? get verificationCode;
  @override
  @JsonKey(name: "role")
  String get role;
  @override
  @JsonKey(name: "created_at", fromJson: _fromJsonDateTime)
  DateTime get createdAt;
  @override
  @JsonKey(name: "updated_at", fromJson: _fromJsonDateTime)
  DateTime get updatedAt;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
