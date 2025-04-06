// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_account_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ForgotAccountState {
  ForgotAccountModel? get forgotAccountStateModel =>
      throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  Map<String, dynamic> get forgotAccountForm =>
      throw _privateConstructorUsedError;

  /// Create a copy of ForgotAccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForgotAccountStateCopyWith<ForgotAccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotAccountStateCopyWith<$Res> {
  factory $ForgotAccountStateCopyWith(
    ForgotAccountState value,
    $Res Function(ForgotAccountState) then,
  ) = _$ForgotAccountStateCopyWithImpl<$Res, ForgotAccountState>;
  @useResult
  $Res call({
    ForgotAccountModel? forgotAccountStateModel,
    bool? isSuccess,
    bool isLoading,
    String? error,
    Map<String, dynamic> forgotAccountForm,
  });

  $ForgotAccountModelCopyWith<$Res>? get forgotAccountStateModel;
}

/// @nodoc
class _$ForgotAccountStateCopyWithImpl<$Res, $Val extends ForgotAccountState>
    implements $ForgotAccountStateCopyWith<$Res> {
  _$ForgotAccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForgotAccountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forgotAccountStateModel = freezed,
    Object? isSuccess = freezed,
    Object? isLoading = null,
    Object? error = freezed,
    Object? forgotAccountForm = null,
  }) {
    return _then(
      _value.copyWith(
            forgotAccountStateModel:
                freezed == forgotAccountStateModel
                    ? _value.forgotAccountStateModel
                    : forgotAccountStateModel // ignore: cast_nullable_to_non_nullable
                        as ForgotAccountModel?,
            isSuccess:
                freezed == isSuccess
                    ? _value.isSuccess
                    : isSuccess // ignore: cast_nullable_to_non_nullable
                        as bool?,
            isLoading:
                null == isLoading
                    ? _value.isLoading
                    : isLoading // ignore: cast_nullable_to_non_nullable
                        as bool,
            error:
                freezed == error
                    ? _value.error
                    : error // ignore: cast_nullable_to_non_nullable
                        as String?,
            forgotAccountForm:
                null == forgotAccountForm
                    ? _value.forgotAccountForm
                    : forgotAccountForm // ignore: cast_nullable_to_non_nullable
                        as Map<String, dynamic>,
          )
          as $Val,
    );
  }

  /// Create a copy of ForgotAccountState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ForgotAccountModelCopyWith<$Res>? get forgotAccountStateModel {
    if (_value.forgotAccountStateModel == null) {
      return null;
    }

    return $ForgotAccountModelCopyWith<$Res>(_value.forgotAccountStateModel!, (
      value,
    ) {
      return _then(_value.copyWith(forgotAccountStateModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ForgotAccountStateImplCopyWith<$Res>
    implements $ForgotAccountStateCopyWith<$Res> {
  factory _$$ForgotAccountStateImplCopyWith(
    _$ForgotAccountStateImpl value,
    $Res Function(_$ForgotAccountStateImpl) then,
  ) = __$$ForgotAccountStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    ForgotAccountModel? forgotAccountStateModel,
    bool? isSuccess,
    bool isLoading,
    String? error,
    Map<String, dynamic> forgotAccountForm,
  });

  @override
  $ForgotAccountModelCopyWith<$Res>? get forgotAccountStateModel;
}

/// @nodoc
class __$$ForgotAccountStateImplCopyWithImpl<$Res>
    extends _$ForgotAccountStateCopyWithImpl<$Res, _$ForgotAccountStateImpl>
    implements _$$ForgotAccountStateImplCopyWith<$Res> {
  __$$ForgotAccountStateImplCopyWithImpl(
    _$ForgotAccountStateImpl _value,
    $Res Function(_$ForgotAccountStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ForgotAccountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forgotAccountStateModel = freezed,
    Object? isSuccess = freezed,
    Object? isLoading = null,
    Object? error = freezed,
    Object? forgotAccountForm = null,
  }) {
    return _then(
      _$ForgotAccountStateImpl(
        forgotAccountStateModel:
            freezed == forgotAccountStateModel
                ? _value.forgotAccountStateModel
                : forgotAccountStateModel // ignore: cast_nullable_to_non_nullable
                    as ForgotAccountModel?,
        isSuccess:
            freezed == isSuccess
                ? _value.isSuccess
                : isSuccess // ignore: cast_nullable_to_non_nullable
                    as bool?,
        isLoading:
            null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                    as bool,
        error:
            freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                    as String?,
        forgotAccountForm:
            null == forgotAccountForm
                ? _value._forgotAccountForm
                : forgotAccountForm // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>,
      ),
    );
  }
}

/// @nodoc

class _$ForgotAccountStateImpl implements _ForgotAccountState {
  _$ForgotAccountStateImpl({
    this.forgotAccountStateModel,
    this.isSuccess,
    this.isLoading = false,
    this.error,
    final Map<String, dynamic> forgotAccountForm = const {},
  }) : _forgotAccountForm = forgotAccountForm;

  @override
  final ForgotAccountModel? forgotAccountStateModel;
  @override
  final bool? isSuccess;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;
  final Map<String, dynamic> _forgotAccountForm;
  @override
  @JsonKey()
  Map<String, dynamic> get forgotAccountForm {
    if (_forgotAccountForm is EqualUnmodifiableMapView)
      return _forgotAccountForm;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_forgotAccountForm);
  }

  @override
  String toString() {
    return 'ForgotAccountState(forgotAccountStateModel: $forgotAccountStateModel, isSuccess: $isSuccess, isLoading: $isLoading, error: $error, forgotAccountForm: $forgotAccountForm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotAccountStateImpl &&
            (identical(
                  other.forgotAccountStateModel,
                  forgotAccountStateModel,
                ) ||
                other.forgotAccountStateModel == forgotAccountStateModel) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(
              other._forgotAccountForm,
              _forgotAccountForm,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    forgotAccountStateModel,
    isSuccess,
    isLoading,
    error,
    const DeepCollectionEquality().hash(_forgotAccountForm),
  );

  /// Create a copy of ForgotAccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotAccountStateImplCopyWith<_$ForgotAccountStateImpl> get copyWith =>
      __$$ForgotAccountStateImplCopyWithImpl<_$ForgotAccountStateImpl>(
        this,
        _$identity,
      );
}

abstract class _ForgotAccountState implements ForgotAccountState {
  factory _ForgotAccountState({
    final ForgotAccountModel? forgotAccountStateModel,
    final bool? isSuccess,
    final bool isLoading,
    final String? error,
    final Map<String, dynamic> forgotAccountForm,
  }) = _$ForgotAccountStateImpl;

  @override
  ForgotAccountModel? get forgotAccountStateModel;
  @override
  bool? get isSuccess;
  @override
  bool get isLoading;
  @override
  String? get error;
  @override
  Map<String, dynamic> get forgotAccountForm;

  /// Create a copy of ForgotAccountState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForgotAccountStateImplCopyWith<_$ForgotAccountStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
