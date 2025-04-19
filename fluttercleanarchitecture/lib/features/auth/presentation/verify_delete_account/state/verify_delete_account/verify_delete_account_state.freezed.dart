// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_delete_account_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$VerifyDeleteAccountState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  Map<String, dynamic> get verifyDeleteAccountForm =>
      throw _privateConstructorUsedError;

  /// Create a copy of VerifyDeleteAccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerifyDeleteAccountStateCopyWith<VerifyDeleteAccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyDeleteAccountStateCopyWith<$Res> {
  factory $VerifyDeleteAccountStateCopyWith(
    VerifyDeleteAccountState value,
    $Res Function(VerifyDeleteAccountState) then,
  ) = _$VerifyDeleteAccountStateCopyWithImpl<$Res, VerifyDeleteAccountState>;
  @useResult
  $Res call({
    bool isLoading,
    bool? isSuccess,
    String? errorMessage,
    Map<String, dynamic> verifyDeleteAccountForm,
  });
}

/// @nodoc
class _$VerifyDeleteAccountStateCopyWithImpl<
  $Res,
  $Val extends VerifyDeleteAccountState
>
    implements $VerifyDeleteAccountStateCopyWith<$Res> {
  _$VerifyDeleteAccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerifyDeleteAccountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isSuccess = freezed,
    Object? errorMessage = freezed,
    Object? verifyDeleteAccountForm = null,
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
            verifyDeleteAccountForm:
                null == verifyDeleteAccountForm
                    ? _value.verifyDeleteAccountForm
                    : verifyDeleteAccountForm // ignore: cast_nullable_to_non_nullable
                        as Map<String, dynamic>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$VerifyDeleteAccountStateImplCopyWith<$Res>
    implements $VerifyDeleteAccountStateCopyWith<$Res> {
  factory _$$VerifyDeleteAccountStateImplCopyWith(
    _$VerifyDeleteAccountStateImpl value,
    $Res Function(_$VerifyDeleteAccountStateImpl) then,
  ) = __$$VerifyDeleteAccountStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool isLoading,
    bool? isSuccess,
    String? errorMessage,
    Map<String, dynamic> verifyDeleteAccountForm,
  });
}

/// @nodoc
class __$$VerifyDeleteAccountStateImplCopyWithImpl<$Res>
    extends
        _$VerifyDeleteAccountStateCopyWithImpl<
          $Res,
          _$VerifyDeleteAccountStateImpl
        >
    implements _$$VerifyDeleteAccountStateImplCopyWith<$Res> {
  __$$VerifyDeleteAccountStateImplCopyWithImpl(
    _$VerifyDeleteAccountStateImpl _value,
    $Res Function(_$VerifyDeleteAccountStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VerifyDeleteAccountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isSuccess = freezed,
    Object? errorMessage = freezed,
    Object? verifyDeleteAccountForm = null,
  }) {
    return _then(
      _$VerifyDeleteAccountStateImpl(
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
        verifyDeleteAccountForm:
            null == verifyDeleteAccountForm
                ? _value._verifyDeleteAccountForm
                : verifyDeleteAccountForm // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>,
      ),
    );
  }
}

/// @nodoc

class _$VerifyDeleteAccountStateImpl implements _VerifyDeleteAccountState {
  _$VerifyDeleteAccountStateImpl({
    this.isLoading = false,
    this.isSuccess,
    this.errorMessage,
    final Map<String, dynamic> verifyDeleteAccountForm = const {},
  }) : _verifyDeleteAccountForm = verifyDeleteAccountForm;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final bool? isSuccess;
  @override
  final String? errorMessage;
  final Map<String, dynamic> _verifyDeleteAccountForm;
  @override
  @JsonKey()
  Map<String, dynamic> get verifyDeleteAccountForm {
    if (_verifyDeleteAccountForm is EqualUnmodifiableMapView)
      return _verifyDeleteAccountForm;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_verifyDeleteAccountForm);
  }

  @override
  String toString() {
    return 'VerifyDeleteAccountState(isLoading: $isLoading, isSuccess: $isSuccess, errorMessage: $errorMessage, verifyDeleteAccountForm: $verifyDeleteAccountForm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyDeleteAccountStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(
              other._verifyDeleteAccountForm,
              _verifyDeleteAccountForm,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    isLoading,
    isSuccess,
    errorMessage,
    const DeepCollectionEquality().hash(_verifyDeleteAccountForm),
  );

  /// Create a copy of VerifyDeleteAccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyDeleteAccountStateImplCopyWith<_$VerifyDeleteAccountStateImpl>
  get copyWith => __$$VerifyDeleteAccountStateImplCopyWithImpl<
    _$VerifyDeleteAccountStateImpl
  >(this, _$identity);
}

abstract class _VerifyDeleteAccountState implements VerifyDeleteAccountState {
  factory _VerifyDeleteAccountState({
    final bool isLoading,
    final bool? isSuccess,
    final String? errorMessage,
    final Map<String, dynamic> verifyDeleteAccountForm,
  }) = _$VerifyDeleteAccountStateImpl;

  @override
  bool get isLoading;
  @override
  bool? get isSuccess;
  @override
  String? get errorMessage;
  @override
  Map<String, dynamic> get verifyDeleteAccountForm;

  /// Create a copy of VerifyDeleteAccountState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyDeleteAccountStateImplCopyWith<_$VerifyDeleteAccountStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
