// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flashcard_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FlashcardResponseImpl _$$FlashcardResponseImplFromJson(
  Map<String, dynamic> json,
) => _$FlashcardResponseImpl(
  id: (json['id'] as num).toInt(),
  question: json['question'] as String,
  answer: json['answer'] as String,
  createdAt: _fromJsonDateTime(json['created_at'] as String?),
  updatedAt: _fromJsonDateTime(json['updated_at'] as String?),
);

Map<String, dynamic> _$$FlashcardResponseImplToJson(
  _$FlashcardResponseImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'question': instance.question,
  'answer': instance.answer,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
};
