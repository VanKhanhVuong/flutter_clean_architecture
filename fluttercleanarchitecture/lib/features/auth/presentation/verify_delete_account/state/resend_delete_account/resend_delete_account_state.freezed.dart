// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resend_delete_account_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ResendDeleteAccountState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  Map<String, dynamic> get resendDeleteAccountForm =>
      throw _privateConstructorUsedError;

  /// Create a copy of ResendDeleteAccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResendDeleteAccountStateCopyWith<ResendDeleteAccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResendDeleteAccountStateCopyWith<$Res> {
  factory $ResendDeleteAccountStateCopyWith(
    ResendDeleteAccountState value,
    $Res Function(ResendDeleteAccountState) then,
  ) = _$ResendDeleteAccountStateCopyWithImpl<$Res, ResendDeleteAccountState>;
  @useResult
  $Res call({
    bool isLoading,
    bool? isSuccess,
    String? errorMessage,
    Map<String, dynamic> resendDeleteAccountForm,
  });
}

/// @nodoc
class _$ResendDeleteAccountStateCopyWithImpl<
  $Res,
  $Val extends ResendDeleteAccountState
>
    implements $ResendDeleteAccountStateCopyWith<$Res> {
  _$ResendDeleteAccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResendDeleteAccountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isSuccess = freezed,
    Object? errorMessage = freezed,
    Object? resendDeleteAccountForm = null,
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
            resendDeleteAccountForm:
                null == resendDeleteAccountForm
                    ? _value.resendDeleteAccountForm
                    : resendDeleteAccountForm // ignore: cast_nullable_to_non_nullable
                        as Map<String, dynamic>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ResendDeleteAccountStateImplCopyWith<$Res>
    implements $ResendDeleteAccountStateCopyWith<$Res> {
  factory _$$ResendDeleteAccountStateImplCopyWith(
    _$ResendDeleteAccountStateImpl value,
    $Res Function(_$ResendDeleteAccountStateImpl) then,
  ) = __$$ResendDeleteAccountStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool isLoading,
    bool? isSuccess,
    String? errorMessage,
    Map<String, dynamic> resendDeleteAccountForm,
  });
}

/// @nodoc
class __$$ResendDeleteAccountStateImplCopyWithImpl<$Res>
    extends
        _$ResendDeleteAccountStateCopyWithImpl<
          $Res,
          _$ResendDeleteAccountStateImpl
        >
    implements _$$ResendDeleteAccountStateImplCopyWith<$Res> {
  __$$ResendDeleteAccountStateImplCopyWithImpl(
    _$ResendDeleteAccountStateImpl _value,
    $Res Function(_$ResendDeleteAccountStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ResendDeleteAccountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isSuccess = freezed,
    Object? errorMessage = freezed,
    Object? resendDeleteAccountForm = null,
  }) {
    return _then(
      _$ResendDeleteAccountStateImpl(
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
        resendDeleteAccountForm:
            null == resendDeleteAccountForm
                ? _value._resendDeleteAccountForm
                : resendDeleteAccountForm // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>,
      ),
    );
  }
}

/// @nodoc

class _$ResendDeleteAccountStateImpl implements _ResendDeleteAccountState {
  _$ResendDeleteAccountStateImpl({
    this.isLoading = false,
    this.isSuccess,
    this.errorMessage,
    final Map<String, dynamic> resendDeleteAccountForm = const {},
  }) : _resendDeleteAccountForm = resendDeleteAccountForm;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final bool? isSuccess;
  @override
  final String? errorMessage;
  final Map<String, dynamic> _resendDeleteAccountForm;
  @override
  @JsonKey()
  Map<String, dynamic> get resendDeleteAccountForm {
    if (_resendDeleteAccountForm is EqualUnmodifiableMapView)
      return _resendDeleteAccountForm;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_resendDeleteAccountForm);
  }

  @override
  String toString() {
    return 'ResendDeleteAccountState(isLoading: $isLoading, isSuccess: $isSuccess, errorMessage: $errorMessage, resendDeleteAccountForm: $resendDeleteAccountForm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResendDeleteAccountStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(
              other._resendDeleteAccountForm,
              _resendDeleteAccountForm,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    isLoading,
    isSuccess,
    errorMessage,
    const DeepCollectionEquality().hash(_resendDeleteAccountForm),
  );

  /// Create a copy of ResendDeleteAccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResendDeleteAccountStateImplCopyWith<_$ResendDeleteAccountStateImpl>
  get copyWith => __$$ResendDeleteAccountStateImplCopyWithImpl<
    _$ResendDeleteAccountStateImpl
  >(this, _$identity);
}

abstract class _ResendDeleteAccountState implements ResendDeleteAccountState {
  factory _ResendDeleteAccountState({
    final bool isLoading,
    final bool? isSuccess,
    final String? errorMessage,
    final Map<String, dynamic> resendDeleteAccountForm,
  }) = _$ResendDeleteAccountStateImpl;

  @override
  bool get isLoading;
  @override
  bool? get isSuccess;
  @override
  String? get errorMessage;
  @override
  Map<String, dynamic> get resendDeleteAccountForm;

  /// Create a copy of ResendDeleteAccountState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResendDeleteAccountStateImplCopyWith<_$ResendDeleteAccountStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
