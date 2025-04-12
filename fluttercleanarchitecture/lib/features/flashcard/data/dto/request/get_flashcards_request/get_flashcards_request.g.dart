// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_flashcards_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetFlashcardsRequestImpl _$$GetFlashcardsRequestImplFromJson(
  Map<String, dynamic> json,
) => _$GetFlashcardsRequestImpl(
  userId: (json['user_id'] as num).toInt(),
  isActive: (json['is_active'] as num).toInt(),
);

Map<String, dynamic> _$$GetFlashcardsRequestImplToJson(
  _$GetFlashcardsRequestImpl instance,
) => <String, dynamic>{
  'user_id': instance.userId,
  'is_active': instance.isActive,
};
