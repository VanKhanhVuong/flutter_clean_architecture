// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resend_delete_account_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ResendDeleteAccountRequest _$ResendDeleteAccountRequestFromJson(
  Map<String, dynamic> json,
) {
  return _ResendDeleteAccountRequest.fromJson(json);
}

/// @nodoc
mixin _$ResendDeleteAccountRequest {
  @JsonKey(name: "email")
  String get email => throw _privateConstructorUsedError;

  /// Serializes this ResendDeleteAccountRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResendDeleteAccountRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResendDeleteAccountRequestCopyWith<ResendDeleteAccountRequest>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResendDeleteAccountRequestCopyWith<$Res> {
  factory $ResendDeleteAccountRequestCopyWith(
    ResendDeleteAccountRequest value,
    $Res Function(ResendDeleteAccountRequest) then,
  ) =
      _$ResendDeleteAccountRequestCopyWithImpl<
        $Res,
        ResendDeleteAccountRequest
      >;
  @useResult
  $Res call({@JsonKey(name: "email") String email});
}

/// @nodoc
class _$ResendDeleteAccountRequestCopyWithImpl<
  $Res,
  $Val extends ResendDeleteAccountRequest
>
    implements $ResendDeleteAccountRequestCopyWith<$Res> {
  _$ResendDeleteAccountRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResendDeleteAccountRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null}) {
    return _then(
      _value.copyWith(
            email:
                null == email
                    ? _value.email
                    : email // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ResendDeleteAccountRequestImplCopyWith<$Res>
    implements $ResendDeleteAccountRequestCopyWith<$Res> {
  factory _$$ResendDeleteAccountRequestImplCopyWith(
    _$ResendDeleteAccountRequestImpl value,
    $Res Function(_$ResendDeleteAccountRequestImpl) then,
  ) = __$$ResendDeleteAccountRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "email") String email});
}

/// @nodoc
class __$$ResendDeleteAccountRequestImplCopyWithImpl<$Res>
    extends
        _$ResendDeleteAccountRequestCopyWithImpl<
          $Res,
          _$ResendDeleteAccountRequestImpl
        >
    implements _$$ResendDeleteAccountRequestImplCopyWith<$Res> {
  __$$ResendDeleteAccountRequestImplCopyWithImpl(
    _$ResendDeleteAccountRequestImpl _value,
    $Res Function(_$ResendDeleteAccountRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ResendDeleteAccountRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null}) {
    return _then(
      _$ResendDeleteAccountRequestImpl(
        email:
            null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ResendDeleteAccountRequestImpl implements _ResendDeleteAccountRequest {
  const _$ResendDeleteAccountRequestImpl({
    @JsonKey(name: "email") required this.email,
  });

  factory _$ResendDeleteAccountRequestImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$ResendDeleteAccountRequestImplFromJson(json);

  @override
  @JsonKey(name: "email")
  final String email;

  @override
  String toString() {
    return 'ResendDeleteAccountRequest(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResendDeleteAccountRequestImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of ResendDeleteAccountRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResendDeleteAccountRequestImplCopyWith<_$ResendDeleteAccountRequestImpl>
  get copyWith => __$$ResendDeleteAccountRequestImplCopyWithImpl<
    _$ResendDeleteAccountRequestImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResendDeleteAccountRequestImplToJson(this);
  }
}

abstract class _ResendDeleteAccountRequest
    implements ResendDeleteAccountRequest {
  const factory _ResendDeleteAccountRequest({
    @JsonKey(name: "email") required final String email,
  }) = _$ResendDeleteAccountRequestImpl;

  factory _ResendDeleteAccountRequest.fromJson(Map<String, dynamic> json) =
      _$ResendDeleteAccountRequestImpl.fromJson;

  @override
  @JsonKey(name: "email")
  String get email;

  /// Create a copy of ResendDeleteAccountRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResendDeleteAccountRequestImplCopyWith<_$ResendDeleteAccountRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}
