// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flashcards_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$FlashCardsModel {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<FlashcardResponse> get flashcards => throw _privateConstructorUsedError;

  /// Create a copy of FlashCardsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FlashCardsModelCopyWith<FlashCardsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlashCardsModelCopyWith<$Res> {
  factory $FlashCardsModelCopyWith(
    FlashCardsModel value,
    $Res Function(FlashCardsModel) then,
  ) = _$FlashCardsModelCopyWithImpl<$Res, FlashCardsModel>;
  @useResult
  $Res call({bool success, String message, List<FlashcardResponse> flashcards});
}

/// @nodoc
class _$FlashCardsModelCopyWithImpl<$Res, $Val extends FlashCardsModel>
    implements $FlashCardsModelCopyWith<$Res> {
  _$FlashCardsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FlashCardsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? flashcards = null,
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
            flashcards:
                null == flashcards
                    ? _value.flashcards
                    : flashcards // ignore: cast_nullable_to_non_nullable
                        as List<FlashcardResponse>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FlashCardsModelImplCopyWith<$Res>
    implements $FlashCardsModelCopyWith<$Res> {
  factory _$$FlashCardsModelImplCopyWith(
    _$FlashCardsModelImpl value,
    $Res Function(_$FlashCardsModelImpl) then,
  ) = __$$FlashCardsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String message, List<FlashcardResponse> flashcards});
}

/// @nodoc
class __$$FlashCardsModelImplCopyWithImpl<$Res>
    extends _$FlashCardsModelCopyWithImpl<$Res, _$FlashCardsModelImpl>
    implements _$$FlashCardsModelImplCopyWith<$Res> {
  __$$FlashCardsModelImplCopyWithImpl(
    _$FlashCardsModelImpl _value,
    $Res Function(_$FlashCardsModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FlashCardsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? flashcards = null,
  }) {
    return _then(
      _$FlashCardsModelImpl(
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
        flashcards:
            null == flashcards
                ? _value._flashcards
                : flashcards // ignore: cast_nullable_to_non_nullable
                    as List<FlashcardResponse>,
      ),
    );
  }
}

/// @nodoc

class _$FlashCardsModelImpl implements _FlashCardsModel {
  _$FlashCardsModelImpl({
    required this.success,
    required this.message,
    required final List<FlashcardResponse> flashcards,
  }) : _flashcards = flashcards;

  @override
  final bool success;
  @override
  final String message;
  final List<FlashcardResponse> _flashcards;
  @override
  List<FlashcardResponse> get flashcards {
    if (_flashcards is EqualUnmodifiableListView) return _flashcards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_flashcards);
  }

  @override
  String toString() {
    return 'FlashCardsModel(success: $success, message: $message, flashcards: $flashcards)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlashCardsModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(
              other._flashcards,
              _flashcards,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    success,
    message,
    const DeepCollectionEquality().hash(_flashcards),
  );

  /// Create a copy of FlashCardsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FlashCardsModelImplCopyWith<_$FlashCardsModelImpl> get copyWith =>
      __$$FlashCardsModelImplCopyWithImpl<_$FlashCardsModelImpl>(
        this,
        _$identity,
      );
}

abstract class _FlashCardsModel implements FlashCardsModel {
  factory _FlashCardsModel({
    required final bool success,
    required final String message,
    required final List<FlashcardResponse> flashcards,
  }) = _$FlashCardsModelImpl;

  @override
  bool get success;
  @override
  String get message;
  @override
  List<FlashcardResponse> get flashcards;

  /// Create a copy of FlashCardsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FlashCardsModelImplCopyWith<_$FlashCardsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
