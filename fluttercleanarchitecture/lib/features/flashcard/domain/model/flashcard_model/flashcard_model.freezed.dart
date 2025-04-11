// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flashcard_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$FlashCardModel {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  FlashcardResponse get flashcard => throw _privateConstructorUsedError;

  /// Create a copy of FlashCardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FlashCardModelCopyWith<FlashCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlashCardModelCopyWith<$Res> {
  factory $FlashCardModelCopyWith(
    FlashCardModel value,
    $Res Function(FlashCardModel) then,
  ) = _$FlashCardModelCopyWithImpl<$Res, FlashCardModel>;
  @useResult
  $Res call({bool success, String message, FlashcardResponse flashcard});

  $FlashcardResponseCopyWith<$Res> get flashcard;
}

/// @nodoc
class _$FlashCardModelCopyWithImpl<$Res, $Val extends FlashCardModel>
    implements $FlashCardModelCopyWith<$Res> {
  _$FlashCardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FlashCardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? flashcard = null,
  }) {
    return _then(
      _value.copyWith(
            success:
                null == success
                    ? _value.success
                    : success // ignore: cast_nullable_to_non_nullable
                        as bool,
            message:
                null == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String,
            flashcard:
                null == flashcard
                    ? _value.flashcard
                    : flashcard // ignore: cast_nullable_to_non_nullable
                        as FlashcardResponse,
          )
          as $Val,
    );
  }

  /// Create a copy of FlashCardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FlashcardResponseCopyWith<$Res> get flashcard {
    return $FlashcardResponseCopyWith<$Res>(_value.flashcard, (value) {
      return _then(_value.copyWith(flashcard: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FlashCardModelImplCopyWith<$Res>
    implements $FlashCardModelCopyWith<$Res> {
  factory _$$FlashCardModelImplCopyWith(
    _$FlashCardModelImpl value,
    $Res Function(_$FlashCardModelImpl) then,
  ) = __$$FlashCardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String message, FlashcardResponse flashcard});

  @override
  $FlashcardResponseCopyWith<$Res> get flashcard;
}

/// @nodoc
class __$$FlashCardModelImplCopyWithImpl<$Res>
    extends _$FlashCardModelCopyWithImpl<$Res, _$FlashCardModelImpl>
    implements _$$FlashCardModelImplCopyWith<$Res> {
  __$$FlashCardModelImplCopyWithImpl(
    _$FlashCardModelImpl _value,
    $Res Function(_$FlashCardModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FlashCardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? flashcard = null,
  }) {
    return _then(
      _$FlashCardModelImpl(
        success:
            null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                    as bool,
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
        flashcard:
            null == flashcard
                ? _value.flashcard
                : flashcard // ignore: cast_nullable_to_non_nullable
                    as FlashcardResponse,
      ),
    );
  }
}

/// @nodoc

class _$FlashCardModelImpl implements _FlashCardModel {
  _$FlashCardModelImpl({
    required this.success,
    required this.message,
    required this.flashcard,
  });

  @override
  final bool success;
  @override
  final String message;
  @override
  final FlashcardResponse flashcard;

  @override
  String toString() {
    return 'FlashCardModel(success: $success, message: $message, flashcard: $flashcard)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlashCardModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.flashcard, flashcard) ||
                other.flashcard == flashcard));
  }

  @override
  int get hashCode => Object.hash(runtimeType, success, message, flashcard);

  /// Create a copy of FlashCardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FlashCardModelImplCopyWith<_$FlashCardModelImpl> get copyWith =>
      __$$FlashCardModelImplCopyWithImpl<_$FlashCardModelImpl>(
        this,
        _$identity,
      );
}

abstract class _FlashCardModel implements FlashCardModel {
  factory _FlashCardModel({
    required final bool success,
    required final String message,
    required final FlashcardResponse flashcard,
  }) = _$FlashCardModelImpl;

  @override
  bool get success;
  @override
  String get message;
  @override
  FlashcardResponse get flashcard;

  /// Create a copy of FlashCardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FlashCardModelImplCopyWith<_$FlashCardModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
