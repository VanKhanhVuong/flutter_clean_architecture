// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_account_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeleteAccountRequestImpl _$$DeleteAccountRequestImplFromJson(
  Map<String, dynamic> json,
) => _$DeleteAccountRequestImpl(
  email: json['email'] as String,
  password: json['password'] as String,
  passwordConfirmation: json['password_confirmation'] as String,
);

Map<String, dynamic> _$$DeleteAccountRequestImplToJson(
  _$DeleteAccountRequestImpl instance,
) => <String, dynamic>{
  'email': instance.email,
  'password': instance.password,
  'password_confirmation': instance.passwordConfirmation,
};
