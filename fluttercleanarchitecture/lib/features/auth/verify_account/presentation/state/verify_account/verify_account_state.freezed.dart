// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_account_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$VerifyAccountState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  Map<String, dynamic> get verifyAccountForm =>
      throw _privateConstructorUsedError;

  /// Create a copy of VerifyAccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerifyAccountStateCopyWith<VerifyAccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyAccountStateCopyWith<$Res> {
  factory $VerifyAccountStateCopyWith(
    VerifyAccountState value,
    $Res Function(VerifyAccountState) then,
  ) = _$VerifyAccountStateCopyWithImpl<$Res, VerifyAccountState>;
  @useResult
  $Res call({
    bool isLoading,
    bool? isSuccess,
    String? errorMessage,
    Map<String, dynamic> verifyAccountForm,
  });
}

/// @nodoc
class _$VerifyAccountStateCopyWithImpl<$Res, $Val extends VerifyAccountState>
    implements $VerifyAccountStateCopyWith<$Res> {
  _$VerifyAccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerifyAccountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isSuccess = freezed,
    Object? errorMessage = freezed,
    Object? verifyAccountForm = null,
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
            verifyAccountForm:
                null == verifyAccountForm
                    ? _value.verifyAccountForm
                    : verifyAccountForm // ignore: cast_nullable_to_non_nullable
                        as Map<String, dynamic>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$VerifyAccountStateImplCopyWith<$Res>
    implements $VerifyAccountStateCopyWith<$Res> {
  factory _$$VerifyAccountStateImplCopyWith(
    _$VerifyAccountStateImpl value,
    $Res Function(_$VerifyAccountStateImpl) then,
  ) = __$$VerifyAccountStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool isLoading,
    bool? isSuccess,
    String? errorMessage,
    Map<String, dynamic> verifyAccountForm,
  });
}

/// @nodoc
class __$$VerifyAccountStateImplCopyWithImpl<$Res>
    extends _$VerifyAccountStateCopyWithImpl<$Res, _$VerifyAccountStateImpl>
    implements _$$VerifyAccountStateImplCopyWith<$Res> {
  __$$VerifyAccountStateImplCopyWithImpl(
    _$VerifyAccountStateImpl _value,
    $Res Function(_$VerifyAccountStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VerifyAccountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isSuccess = freezed,
    Object? errorMessage = freezed,
    Object? verifyAccountForm = null,
  }) {
    return _then(
      _$VerifyAccountStateImpl(
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
        verifyAccountForm:
            null == verifyAccountForm
                ? _value._verifyAccountForm
                : verifyAccountForm // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>,
      ),
    );
  }
}

/// @nodoc

class _$VerifyAccountStateImpl implements _VerifyAccountState {
  _$VerifyAccountStateImpl({
    this.isLoading = false,
    this.isSuccess,
    this.errorMessage,
    final Map<String, dynamic> verifyAccountForm = const {},
  }) : _verifyAccountForm = verifyAccountForm;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final bool? isSuccess;
  @override
  final String? errorMessage;
  final Map<String, dynamic> _verifyAccountForm;
  @override
  @JsonKey()
  Map<String, dynamic> get verifyAccountForm {
    if (_verifyAccountForm is EqualUnmodifiableMapView)
      return _verifyAccountForm;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_verifyAccountForm);
  }

  @override
  String toString() {
    return 'VerifyAccountState(isLoading: $isLoading, isSuccess: $isSuccess, errorMessage: $errorMessage, verifyAccountForm: $verifyAccountForm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyAccountStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(
              other._verifyAccountForm,
              _verifyAccountForm,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    isLoading,
    isSuccess,
    errorMessage,
    const DeepCollectionEquality().hash(_verifyAccountForm),
  );

  /// Create a copy of VerifyAccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyAccountStateImplCopyWith<_$VerifyAccountStateImpl> get copyWith =>
      __$$VerifyAccountStateImplCopyWithImpl<_$VerifyAccountStateImpl>(
        this,
        _$identity,
      );
}

abstract class _VerifyAccountState implements VerifyAccountState {
  factory _VerifyAccountState({
    final bool isLoading,
    final bool? isSuccess,
    final String? errorMessage,
    final Map<String, dynamic> verifyAccountForm,
  }) = _$VerifyAccountStateImpl;

  @override
  bool get isLoading;
  @override
  bool? get isSuccess;
  @override
  String? get errorMessage;
  @override
  Map<String, dynamic> get verifyAccountForm;

  /// Create a copy of VerifyAccountState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyAccountStateImplCopyWith<_$VerifyAccountStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
