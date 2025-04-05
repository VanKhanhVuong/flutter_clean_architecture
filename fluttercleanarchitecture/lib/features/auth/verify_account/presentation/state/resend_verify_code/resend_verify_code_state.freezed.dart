// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resend_verify_code_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ResendVerifyCodeState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  Map<String, dynamic> get resendVerifyCodeForm =>
      throw _privateConstructorUsedError;

  /// Create a copy of ResendVerifyCodeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResendVerifyCodeStateCopyWith<ResendVerifyCodeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResendVerifyCodeStateCopyWith<$Res> {
  factory $ResendVerifyCodeStateCopyWith(
    ResendVerifyCodeState value,
    $Res Function(ResendVerifyCodeState) then,
  ) = _$ResendVerifyCodeStateCopyWithImpl<$Res, ResendVerifyCodeState>;
  @useResult
  $Res call({
    bool isLoading,
    bool? isSuccess,
    String? errorMessage,
    Map<String, dynamic> resendVerifyCodeForm,
  });
}

/// @nodoc
class _$ResendVerifyCodeStateCopyWithImpl<
  $Res,
  $Val extends ResendVerifyCodeState
>
    implements $ResendVerifyCodeStateCopyWith<$Res> {
  _$ResendVerifyCodeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResendVerifyCodeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isSuccess = freezed,
    Object? errorMessage = freezed,
    Object? resendVerifyCodeForm = null,
  }) {
    return _then(
      _value.copyWith(
            isLoading:
                null == isLoading
                    ? _value.isLoading
                    : isLoading // ignore: cast_nullable_to_non_nullable
                        as bool,
            isSuccess:
                freezed == isSuccess
                    ? _value.isSuccess
                    : isSuccess // ignore: cast_nullable_to_non_nullable
                        as bool?,
            errorMessage:
                freezed == errorMessage
                    ? _value.errorMessage
                    : errorMessage // ignore: cast_nullable_to_non_nullable
                        as String?,
            resendVerifyCodeForm:
                null == resendVerifyCodeForm
                    ? _value.resendVerifyCodeForm
                    : resendVerifyCodeForm // ignore: cast_nullable_to_non_nullable
                        as Map<String, dynamic>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ResendVerifyCodeStateImplCopyWith<$Res>
    implements $ResendVerifyCodeStateCopyWith<$Res> {
  factory _$$ResendVerifyCodeStateImplCopyWith(
    _$ResendVerifyCodeStateImpl value,
    $Res Function(_$ResendVerifyCodeStateImpl) then,
  ) = __$$ResendVerifyCodeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool isLoading,
    bool? isSuccess,
    String? errorMessage,
    Map<String, dynamic> resendVerifyCodeForm,
  });
}

/// @nodoc
class __$$ResendVerifyCodeStateImplCopyWithImpl<$Res>
    extends
        _$ResendVerifyCodeStateCopyWithImpl<$Res, _$ResendVerifyCodeStateImpl>
    implements _$$ResendVerifyCodeStateImplCopyWith<$Res> {
  __$$ResendVerifyCodeStateImplCopyWithImpl(
    _$ResendVerifyCodeStateImpl _value,
    $Res Function(_$ResendVerifyCodeStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ResendVerifyCodeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isSuccess = freezed,
    Object? errorMessage = freezed,
    Object? resendVerifyCodeForm = null,
  }) {
    return _then(
      _$ResendVerifyCodeStateImpl(
        isLoading:
            null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                    as bool,
        isSuccess:
            freezed == isSuccess
                ? _value.isSuccess
                : isSuccess // ignore: cast_nullable_to_non_nullable
                    as bool?,
        errorMessage:
            freezed == errorMessage
                ? _value.errorMessage
                : errorMessage // ignore: cast_nullable_to_non_nullable
                    as String?,
        resendVerifyCodeForm:
            null == resendVerifyCodeForm
                ? _value._resendVerifyCodeForm
                : resendVerifyCodeForm // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>,
      ),
    );
  }
}

/// @nodoc

class _$ResendVerifyCodeStateImpl implements _ResendVerifyCodeState {
  _$ResendVerifyCodeStateImpl({
    this.isLoading = false,
    this.isSuccess,
    this.errorMessage,
    final Map<String, dynamic> resendVerifyCodeForm = const {},
  }) : _resendVerifyCodeForm = resendVerifyCodeForm;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final bool? isSuccess;
  @override
  final String? errorMessage;
  final Map<String, dynamic> _resendVerifyCodeForm;
  @override
  @JsonKey()
  Map<String, dynamic> get resendVerifyCodeForm {
    if (_resendVerifyCodeForm is EqualUnmodifiableMapView)
      return _resendVerifyCodeForm;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_resendVerifyCodeForm);
  }

  @override
  String toString() {
    return 'ResendVerifyCodeState(isLoading: $isLoading, isSuccess: $isSuccess, errorMessage: $errorMessage, resendVerifyCodeForm: $resendVerifyCodeForm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResendVerifyCodeStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(
              other._resendVerifyCodeForm,
              _resendVerifyCodeForm,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    isLoading,
    isSuccess,
    errorMessage,
    const DeepCollectionEquality().hash(_resendVerifyCodeForm),
  );

  /// Create a copy of ResendVerifyCodeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResendVerifyCodeStateImplCopyWith<_$ResendVerifyCodeStateImpl>
  get copyWith =>
      __$$ResendVerifyCodeStateImplCopyWithImpl<_$ResendVerifyCodeStateImpl>(
        this,
        _$identity,
      );
}

abstract class _ResendVerifyCodeState implements ResendVerifyCodeState {
  factory _ResendVerifyCodeState({
    final bool isLoading,
    final bool? isSuccess,
    final String? errorMessage,
    final Map<String, dynamic> resendVerifyCodeForm,
  }) = _$ResendVerifyCodeStateImpl;

  @override
  bool get isLoading;
  @override
  bool? get isSuccess;
  @override
  String? get errorMessage;
  @override
  Map<String, dynamic> get resendVerifyCodeForm;

  /// Create a copy of ResendVerifyCodeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResendVerifyCodeStateImplCopyWith<_$ResendVerifyCodeStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
