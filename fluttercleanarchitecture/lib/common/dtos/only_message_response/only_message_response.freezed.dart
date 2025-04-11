// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'only_message_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

OnlyMessageResponse _$OnlyMessageResponseFromJson(Map<String, dynamic> json) {
  return _OnlyMessageResponse.fromJson(json);
}

/// @nodoc
mixin _$OnlyMessageResponse {
  @JsonKey(name: "success")
  bool get success => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;

  /// Serializes this OnlyMessageResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OnlyMessageResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OnlyMessageResponseCopyWith<OnlyMessageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnlyMessageResponseCopyWith<$Res> {
  factory $OnlyMessageResponseCopyWith(
    OnlyMessageResponse value,
    $Res Function(OnlyMessageResponse) then,
  ) = _$OnlyMessageResponseCopyWithImpl<$Res, OnlyMessageResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "success") bool success,
    @JsonKey(name: "message") String message,
  });
}

/// @nodoc
class _$OnlyMessageResponseCopyWithImpl<$Res, $Val extends OnlyMessageResponse>
    implements $OnlyMessageResponseCopyWith<$Res> {
  _$OnlyMessageResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OnlyMessageResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? message = null}) {
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OnlyMessageResponseImplCopyWith<$Res>
    implements $OnlyMessageResponseCopyWith<$Res> {
  factory _$$OnlyMessageResponseImplCopyWith(
    _$OnlyMessageResponseImpl value,
    $Res Function(_$OnlyMessageResponseImpl) then,
  ) = __$$OnlyMessageResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "success") bool success,
    @JsonKey(name: "message") String message,
  });
}

/// @nodoc
class __$$OnlyMessageResponseImplCopyWithImpl<$Res>
    extends _$OnlyMessageResponseCopyWithImpl<$Res, _$OnlyMessageResponseImpl>
    implements _$$OnlyMessageResponseImplCopyWith<$Res> {
  __$$OnlyMessageResponseImplCopyWithImpl(
    _$OnlyMessageResponseImpl _value,
    $Res Function(_$OnlyMessageResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OnlyMessageResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? message = null}) {
    return _then(
      _$OnlyMessageResponseImpl(
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OnlyMessageResponseImpl implements _OnlyMessageResponse {
  const _$OnlyMessageResponseImpl({
    @JsonKey(name: "success") required this.success,
    @JsonKey(name: "message") required this.message,
  });

  factory _$OnlyMessageResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OnlyMessageResponseImplFromJson(json);

  @override
  @JsonKey(name: "success")
  final bool success;
  @override
  @JsonKey(name: "message")
  final String message;

  @override
  String toString() {
    return 'OnlyMessageResponse(success: $success, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnlyMessageResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message);

  /// Create a copy of OnlyMessageResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnlyMessageResponseImplCopyWith<_$OnlyMessageResponseImpl> get copyWith =>
      __$$OnlyMessageResponseImplCopyWithImpl<_$OnlyMessageResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$OnlyMessageResponseImplToJson(this);
  }
}

abstract class _OnlyMessageResponse implements OnlyMessageResponse {
  const factory _OnlyMessageResponse({
    @JsonKey(name: "success") required final bool success,
    @JsonKey(name: "message") required final String message,
  }) = _$OnlyMessageResponseImpl;

  factory _OnlyMessageResponse.fromJson(Map<String, dynamic> json) =
      _$OnlyMessageResponseImpl.fromJson;

  @override
  @JsonKey(name: "success")
  bool get success;
  @override
  @JsonKey(name: "message")
  String get message;

  /// Create a copy of OnlyMessageResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnlyMessageResponseImplCopyWith<_$OnlyMessageResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
