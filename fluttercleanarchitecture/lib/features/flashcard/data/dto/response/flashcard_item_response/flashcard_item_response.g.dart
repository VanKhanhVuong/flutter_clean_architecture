// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flashcard_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FlashcardItemResponseImpl _$$FlashcardItemResponseImplFromJson(
  Map<String, dynamic> json,
) => _$FlashcardItemResponseImpl(
  success: json['success'] as bool,
  message: json['message'] as String,
  flashcardData: FlashcardResponse.fromJson(
    json['flashcard_data'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$$FlashcardItemResponseImplToJson(
  _$FlashcardItemResponseImpl instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'flashcard_data': instance.flashcardData,
};
