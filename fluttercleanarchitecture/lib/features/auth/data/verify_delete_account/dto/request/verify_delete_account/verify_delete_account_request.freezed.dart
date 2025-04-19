// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_delete_account_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

VerifyDeleteAccountRequest _$VerifyDeleteAccountRequestFromJson(
  Map<String, dynamic> json,
) {
  return _VerifyDeleteAccountRequest.fromJson(json);
}

/// @nodoc
mixin _$VerifyDeleteAccountRequest {
  @JsonKey(name: "otp")
  String get otp => throw _privateConstructorUsedError;

  /// Serializes this VerifyDeleteAccountRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VerifyDeleteAccountRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerifyDeleteAccountRequestCopyWith<VerifyDeleteAccountRequest>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyDeleteAccountRequestCopyWith<$Res> {
  factory $VerifyDeleteAccountRequestCopyWith(
    VerifyDeleteAccountRequest value,
    $Res Function(VerifyDeleteAccountRequest) then,
  ) =
      _$VerifyDeleteAccountRequestCopyWithImpl<
        $Res,
        VerifyDeleteAccountRequest
      >;
  @useResult
  $Res call({@JsonKey(name: "otp") String otp});
}

/// @nodoc
class _$VerifyDeleteAccountRequestCopyWithImpl<
  $Res,
  $Val extends VerifyDeleteAccountRequest
>
    implements $VerifyDeleteAccountRequestCopyWith<$Res> {
  _$VerifyDeleteAccountRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerifyDeleteAccountRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? otp = null}) {
    return _then(
      _value.copyWith(
            otp:
                null == otp
                    ? _value.otp
                    : otp // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$VerifyDeleteAccountRequestImplCopyWith<$Res>
    implements $VerifyDeleteAccountRequestCopyWith<$Res> {
  factory _$$VerifyDeleteAccountRequestImplCopyWith(
    _$VerifyDeleteAccountRequestImpl value,
    $Res Function(_$VerifyDeleteAccountRequestImpl) then,
  ) = __$$VerifyDeleteAccountRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "otp") String otp});
}

/// @nodoc
class __$$VerifyDeleteAccountRequestImplCopyWithImpl<$Res>
    extends
        _$VerifyDeleteAccountRequestCopyWithImpl<
          $Res,
          _$VerifyDeleteAccountRequestImpl
        >
    implements _$$VerifyDeleteAccountRequestImplCopyWith<$Res> {
  __$$VerifyDeleteAccountRequestImplCopyWithImpl(
    _$VerifyDeleteAccountRequestImpl _value,
    $Res Function(_$VerifyDeleteAccountRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VerifyDeleteAccountRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? otp = null}) {
    return _then(
      _$VerifyDeleteAccountRequestImpl(
        otp:
            null == otp
                ? _value.otp
                : otp // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyDeleteAccountRequestImpl implements _VerifyDeleteAccountRequest {
  const _$VerifyDeleteAccountRequestImpl({
    @JsonKey(name: "otp") required this.otp,
  });

  factory _$VerifyDeleteAccountRequestImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$VerifyDeleteAccountRequestImplFromJson(json);

  @override
  @JsonKey(name: "otp")
  final String otp;

  @override
  String toString() {
    return 'VerifyDeleteAccountRequest(otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyDeleteAccountRequestImpl &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, otp);

  /// Create a copy of VerifyDeleteAccountRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyDeleteAccountRequestImplCopyWith<_$VerifyDeleteAccountRequestImpl>
  get copyWith => __$$VerifyDeleteAccountRequestImplCopyWithImpl<
    _$VerifyDeleteAccountRequestImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyDeleteAccountRequestImplToJson(this);
  }
}

abstract class _VerifyDeleteAccountRequest
    implements VerifyDeleteAccountRequest {
  const factory _VerifyDeleteAccountRequest({
    @JsonKey(name: "otp") required final String otp,
  }) = _$VerifyDeleteAccountRequestImpl;

  factory _VerifyDeleteAccountRequest.fromJson(Map<String, dynamic> json) =
      _$VerifyDeleteAccountRequestImpl.fromJson;

  @override
  @JsonKey(name: "otp")
  String get otp;

  /// Create a copy of VerifyDeleteAccountRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyDeleteAccountRequestImplCopyWith<_$VerifyDeleteAccountRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}
