// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_flashcard_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditFlashcardRequestImpl _$$EditFlashcardRequestImplFromJson(
  Map<String, dynamic> json,
) => _$EditFlashcardRequestImpl(
  flashcardId: (json['flashcard_id'] as num).toInt(),
  question: json['question'] as String,
  answer: json['answer'] as String,
);

Map<String, dynamic> _$$EditFlashcardRequestImplToJson(
  _$EditFlashcardRequestImpl instance,
) => <String, dynamic>{
  'flashcard_id': instance.flashcardId,
  'question': instance.question,
  'answer': instance.answer,
};
