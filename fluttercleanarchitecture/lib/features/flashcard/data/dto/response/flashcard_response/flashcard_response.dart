import 'package:freezed_annotation/freezed_annotation.dart';

part 'flashcard_response.freezed.dart';
part 'flashcard_response.g.dart';

@freezed
class FlashcardResponse with _$FlashcardResponse {
  const factory FlashcardResponse({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "question") required String question,
    @JsonKey(name: "answer") required String answer,
    @JsonKey(name: "created_at", fromJson: _fromJsonDateTime)
    required DateTime createdAt,
    @JsonKey(name: "updated_at", fromJson: _fromJsonDateTime)
    required DateTime updatedAt,
  }) = _FlashcardResponse;

  factory FlashcardResponse.fromJson(Map<String, dynamic> json) =>
      _$FlashcardResponseFromJson(json);
}

DateTime _fromJsonDateTime(String? date) {
  if (date == null) {
    throw ArgumentError('Date string is null'); // Tránh return null
  }
  return DateTime.parse(date);
}
