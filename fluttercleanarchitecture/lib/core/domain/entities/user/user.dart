import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "email") required String email,
    @JsonKey(name: "email_verified_at", fromJson: _fromJsonDateTime)
    DateTime? emailVerifiedAt,
    @JsonKey(name: "otp_expires_at", fromJson: _fromJsonCustomDateTime)
    DateTime? otpExpiresAt,
    @JsonKey(name: "verification_code") int? verificationCode,
    @JsonKey(name: "role") required String role,
    @JsonKey(name: "created_at", fromJson: _fromJsonDateTime)
    required DateTime createdAt,
    @JsonKey(name: "updated_at", fromJson: _fromJsonDateTime)
    required DateTime updatedAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

// ✅ Parse ISO 8601: "2025-03-28T13:08:58.000000Z"
DateTime _fromJsonDateTime(String? date) {
  if (date == null) {
    throw ArgumentError('Date string is null'); // Tránh return null
  }
  return DateTime.parse(date);
}

// ✅ Parse custom format: "2025-03-28 13:11:31"
DateTime? _fromJsonCustomDateTime(String? date) {
  if (date == null) return null;
  try {
    return DateTime.parse(date);
  } catch (_) {
    return DateTime.tryParse(date.replaceAll(" ", "T")); // Chuyển về dạng "T"
  }
}
