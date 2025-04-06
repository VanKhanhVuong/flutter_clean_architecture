// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resend_reset_code_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ResendResetCodeState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  Map<String, dynamic> get resendResetCodeForm =>
      throw _privateConstructorUsedError;

  /// Create a copy of ResendResetCodeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResendResetCodeStateCopyWith<ResendResetCodeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResendResetCodeStateCopyWith<$Res> {
  factory $ResendResetCodeStateCopyWith(
    ResendResetCodeState value,
    $Res Function(ResendResetCodeState) then,
  ) = _$ResendResetCodeStateCopyWithImpl<$Res, ResendResetCodeState>;
  @useResult
  $Res call({
    bool isLoading,
    bool? isSuccess,
    String? errorMessage,
    Map<String, dynamic> resendResetCodeForm,
  });
}

/// @nodoc
class _$ResendResetCodeStateCopyWithImpl<
  $Res,
  $Val extends ResendResetCodeState
>
    implements $ResendResetCodeStateCopyWith<$Res> {
  _$ResendResetCodeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResendResetCodeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isSuccess = freezed,
    Object? errorMessage = freezed,
    Object? resendResetCodeForm = null,
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
            resendResetCodeForm:
                null == resendResetCodeForm
                    ? _value.resendResetCodeForm
                    : resendResetCodeForm // ignore: cast_nullable_to_non_nullable
                        as Map<String, dynamic>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ResendResetCodeStateImplCopyWith<$Res>
    implements $ResendResetCodeStateCopyWith<$Res> {
  factory _$$ResendResetCodeStateImplCopyWith(
    _$ResendResetCodeStateImpl value,
    $Res Function(_$ResendResetCodeStateImpl) then,
  ) = __$$ResendResetCodeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool isLoading,
    bool? isSuccess,
    String? errorMessage,
    Map<String, dynamic> resendResetCodeForm,
  });
}

/// @nodoc
class __$$ResendResetCodeStateImplCopyWithImpl<$Res>
    extends _$ResendResetCodeStateCopyWithImpl<$Res, _$ResendResetCodeStateImpl>
    implements _$$ResendResetCodeStateImplCopyWith<$Res> {
  __$$ResendResetCodeStateImplCopyWithImpl(
    _$ResendResetCodeStateImpl _value,
    $Res Function(_$ResendResetCodeStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ResendResetCodeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isSuccess = freezed,
    Object? errorMessage = freezed,
    Object? resendResetCodeForm = null,
  }) {
    return _then(
      _$ResendResetCodeStateImpl(
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
        resendResetCodeForm:
            null == resendResetCodeForm
                ? _value._resendResetCodeForm
                : resendResetCodeForm // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>,
      ),
    );
  }
}

/// @nodoc

class _$ResendResetCodeStateImpl implements _ResendResetCodeState {
  _$ResendResetCodeStateImpl({
    this.isLoading = false,
    this.isSuccess,
    this.errorMessage,
    final Map<String, dynamic> resendResetCodeForm = const {},
  }) : _resendResetCodeForm = resendResetCodeForm;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final bool? isSuccess;
  @override
  final String? errorMessage;
  final Map<String, dynamic> _resendResetCodeForm;
  @override
  @JsonKey()
  Map<String, dynamic> get resendResetCodeForm {
    if (_resendResetCodeForm is EqualUnmodifiableMapView)
      return _resendResetCodeForm;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_resendResetCodeForm);
  }

  @override
  String toString() {
    return 'ResendResetCodeState(isLoading: $isLoading, isSuccess: $isSuccess, errorMessage: $errorMessage, resendResetCodeForm: $resendResetCodeForm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResendResetCodeStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(
              other._resendResetCodeForm,
              _resendResetCodeForm,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    isLoading,
    isSuccess,
    errorMessage,
    const DeepCollectionEquality().hash(_resendResetCodeForm),
  );

  /// Create a copy of ResendResetCodeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResendResetCodeStateImplCopyWith<_$ResendResetCodeStateImpl>
  get copyWith =>
      __$$ResendResetCodeStateImplCopyWithImpl<_$ResendResetCodeStateImpl>(
        this,
        _$identity,
      );
}

abstract class _ResendResetCodeState implements ResendResetCodeState {
  factory _ResendResetCodeState({
    final bool isLoading,
    final bool? isSuccess,
    final String? errorMessage,
    final Map<String, dynamic> resendResetCodeForm,
  }) = _$ResendResetCodeStateImpl;

  @override
  bool get isLoading;
  @override
  bool? get isSuccess;
  @override
  String? get errorMessage;
  @override
  Map<String, dynamic> get resendResetCodeForm;

  /// Create a copy of ResendResetCodeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResendResetCodeStateImplCopyWith<_$ResendResetCodeStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
