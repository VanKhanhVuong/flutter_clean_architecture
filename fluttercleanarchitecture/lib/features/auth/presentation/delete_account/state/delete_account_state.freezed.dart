// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_account_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DeleteAccountState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  Map<String, dynamic> get deleteAccountFrom =>
      throw _privateConstructorUsedError;

  /// Create a copy of DeleteAccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteAccountStateCopyWith<DeleteAccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteAccountStateCopyWith<$Res> {
  factory $DeleteAccountStateCopyWith(
    DeleteAccountState value,
    $Res Function(DeleteAccountState) then,
  ) = _$DeleteAccountStateCopyWithImpl<$Res, DeleteAccountState>;
  @useResult
  $Res call({
    bool isLoading,
    bool? isSuccess,
    String? errorMessage,
    Map<String, dynamic> deleteAccountFrom,
  });
}

/// @nodoc
class _$DeleteAccountStateCopyWithImpl<$Res, $Val extends DeleteAccountState>
    implements $DeleteAccountStateCopyWith<$Res> {
  _$DeleteAccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteAccountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isSuccess = freezed,
    Object? errorMessage = freezed,
    Object? deleteAccountFrom = null,
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
            deleteAccountFrom:
                null == deleteAccountFrom
                    ? _value.deleteAccountFrom
                    : deleteAccountFrom // ignore: cast_nullable_to_non_nullable
                        as Map<String, dynamic>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DeleteAccountStateImplCopyWith<$Res>
    implements $DeleteAccountStateCopyWith<$Res> {
  factory _$$DeleteAccountStateImplCopyWith(
    _$DeleteAccountStateImpl value,
    $Res Function(_$DeleteAccountStateImpl) then,
  ) = __$$DeleteAccountStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool isLoading,
    bool? isSuccess,
    String? errorMessage,
    Map<String, dynamic> deleteAccountFrom,
  });
}

/// @nodoc
class __$$DeleteAccountStateImplCopyWithImpl<$Res>
    extends _$DeleteAccountStateCopyWithImpl<$Res, _$DeleteAccountStateImpl>
    implements _$$DeleteAccountStateImplCopyWith<$Res> {
  __$$DeleteAccountStateImplCopyWithImpl(
    _$DeleteAccountStateImpl _value,
    $Res Function(_$DeleteAccountStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeleteAccountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isSuccess = freezed,
    Object? errorMessage = freezed,
    Object? deleteAccountFrom = null,
  }) {
    return _then(
      _$DeleteAccountStateImpl(
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
        deleteAccountFrom:
            null == deleteAccountFrom
                ? _value._deleteAccountFrom
                : deleteAccountFrom // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>,
      ),
    );
  }
}

/// @nodoc

class _$DeleteAccountStateImpl implements _DeleteAccountState {
  _$DeleteAccountStateImpl({
    this.isLoading = false,
    this.isSuccess,
    this.errorMessage,
    final Map<String, dynamic> deleteAccountFrom = const {},
  }) : _deleteAccountFrom = deleteAccountFrom;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final bool? isSuccess;
  @override
  final String? errorMessage;
  final Map<String, dynamic> _deleteAccountFrom;
  @override
  @JsonKey()
  Map<String, dynamic> get deleteAccountFrom {
    if (_deleteAccountFrom is EqualUnmodifiableMapView)
      return _deleteAccountFrom;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_deleteAccountFrom);
  }

  @override
  String toString() {
    return 'DeleteAccountState(isLoading: $isLoading, isSuccess: $isSuccess, errorMessage: $errorMessage, deleteAccountFrom: $deleteAccountFrom)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteAccountStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(
              other._deleteAccountFrom,
              _deleteAccountFrom,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    isLoading,
    isSuccess,
    errorMessage,
    const DeepCollectionEquality().hash(_deleteAccountFrom),
  );

  /// Create a copy of DeleteAccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteAccountStateImplCopyWith<_$DeleteAccountStateImpl> get copyWith =>
      __$$DeleteAccountStateImplCopyWithImpl<_$DeleteAccountStateImpl>(
        this,
        _$identity,
      );
}

abstract class _DeleteAccountState implements DeleteAccountState {
  factory _DeleteAccountState({
    final bool isLoading,
    final bool? isSuccess,
    final String? errorMessage,
    final Map<String, dynamic> deleteAccountFrom,
  }) = _$DeleteAccountStateImpl;

  @override
  bool get isLoading;
  @override
  bool? get isSuccess;
  @override
  String? get errorMessage;
  @override
  Map<String, dynamic> get deleteAccountFrom;

  /// Create a copy of DeleteAccountState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteAccountStateImplCopyWith<_$DeleteAccountStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
