String parseValidationError(dynamic errorData) {
  if (errorData is Map) {
    final Map errorMap = errorData['errors'] ?? errorData;

    final errors = <String>[];
    errorMap.forEach((key, value) {
      if (value is List) {
        for (final msg in value) {
          errors.add(msg.toString());
        }
      } else {
        errors.add(value.toString());
      }
    });
    return errors.join('\n');
  } else if (errorData is String) {
    return errorData;
  }
  return 'Lỗi không xác định';
}
