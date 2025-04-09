// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flashcards_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FlashcardsResponseImpl _$$FlashcardsResponseImplFromJson(
  Map<String, dynamic> json,
) => _$FlashcardsResponseImpl(
  success: json['success'] as bool,
  message: json['message'] as String,
  flashcardsData:
      (json['flashcards_data'] as List<dynamic>)
          .map((e) => FlashcardResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$$FlashcardsResponseImplToJson(
  _$FlashcardsResponseImpl instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'flashcards_data': instance.flashcardsData,
};
