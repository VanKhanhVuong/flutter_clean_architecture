// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_account_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyAccountRequestImpl _$$VerifyAccountRequestImplFromJson(
  Map<String, dynamic> json,
) => _$VerifyAccountRequestImpl(
  email: json['email'] as String,
  otp: json['otp'] as String,
);

Map<String, dynamic> _$$VerifyAccountRequestImplToJson(
  _$VerifyAccountRequestImpl instance,
) => <String, dynamic>{'email': instance.email, 'otp': instance.otp};
