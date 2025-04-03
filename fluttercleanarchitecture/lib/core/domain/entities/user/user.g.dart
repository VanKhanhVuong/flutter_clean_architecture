// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  email: json['email'] as String,
  emailVerifiedAt: _fromJsonDateTime(json['email_verified_at'] as String?),
  otpExpiresAt: _fromJsonCustomDateTime(json['otp_expires_at'] as String?),
  verificationCode: (json['verification_code'] as num?)?.toInt(),
  role: json['role'] as String,
  createdAt: _fromJsonDateTime(json['created_at'] as String?),
  updatedAt: _fromJsonDateTime(json['updated_at'] as String?),
);

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'email_verified_at': instance.emailVerifiedAt?.toIso8601String(),
      'otp_expires_at': instance.otpExpiresAt?.toIso8601String(),
      'verification_code': instance.verificationCode,
      'role': instance.role,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
