// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'logout_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LogoutRequest _$LogoutRequestFromJson(Map<String, dynamic> json) {
  return _LogoutRequest.fromJson(json);
}

/// @nodoc
mixin _$LogoutRequest {
  /// Serializes this LogoutRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogoutRequestCopyWith<$Res> {
  factory $LogoutRequestCopyWith(
    LogoutRequest value,
    $Res Function(LogoutRequest) then,
  ) = _$LogoutRequestCopyWithImpl<$Res, LogoutRequest>;
}

/// @nodoc
class _$LogoutRequestCopyWithImpl<$Res, $Val extends LogoutRequest>
    implements $LogoutRequestCopyWith<$Res> {
  _$LogoutRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LogoutRequest
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LogoutRequestImplCopyWith<$Res> {
  factory _$$LogoutRequestImplCopyWith(
    _$LogoutRequestImpl value,
    $Res Function(_$LogoutRequestImpl) then,
  ) = __$$LogoutRequestImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutRequestImplCopyWithImpl<$Res>
    extends _$LogoutRequestCopyWithImpl<$Res, _$LogoutRequestImpl>
    implements _$$LogoutRequestImplCopyWith<$Res> {
  __$$LogoutRequestImplCopyWithImpl(
    _$LogoutRequestImpl _value,
    $Res Function(_$LogoutRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LogoutRequest
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$LogoutRequestImpl implements _LogoutRequest {
  const _$LogoutRequestImpl();

  factory _$LogoutRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$LogoutRequestImplFromJson(json);

  @override
  String toString() {
    return 'LogoutRequest()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutRequestImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$LogoutRequestImplToJson(this);
  }
}

abstract class _LogoutRequest implements LogoutRequest {
  const factory _LogoutRequest() = _$LogoutRequestImpl;

  factory _LogoutRequest.fromJson(Map<String, dynamic> json) =
      _$LogoutRequestImpl.fromJson;
}
