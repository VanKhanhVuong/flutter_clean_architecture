// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RegisterModel {

 bool get success; String get message;
/// Create a copy of RegisterModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterModelCopyWith<RegisterModel> get copyWith => _$RegisterModelCopyWithImpl<RegisterModel>(this as RegisterModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterModel&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,success,message);

@override
String toString() {
  return 'RegisterModel(success: $success, message: $message)';
}


}

/// @nodoc
abstract mixin class $RegisterModelCopyWith<$Res>  {
  factory $RegisterModelCopyWith(RegisterModel value, $Res Function(RegisterModel) _then) = _$RegisterModelCopyWithImpl;
@useResult
$Res call({
 bool success, String message
});




}
/// @nodoc
class _$RegisterModelCopyWithImpl<$Res>
    implements $RegisterModelCopyWith<$Res> {
  _$RegisterModelCopyWithImpl(this._self, this._then);

  final RegisterModel _self;
  final $Res Function(RegisterModel) _then;

/// Create a copy of RegisterModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? message = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _RegisterModel implements RegisterModel {
   _RegisterModel({required this.success, required this.message});
  

@override final  bool success;
@override final  String message;

/// Create a copy of RegisterModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterModelCopyWith<_RegisterModel> get copyWith => __$RegisterModelCopyWithImpl<_RegisterModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterModel&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,success,message);

@override
String toString() {
  return 'RegisterModel(success: $success, message: $message)';
}


}

/// @nodoc
abstract mixin class _$RegisterModelCopyWith<$Res> implements $RegisterModelCopyWith<$Res> {
  factory _$RegisterModelCopyWith(_RegisterModel value, $Res Function(_RegisterModel) _then) = __$RegisterModelCopyWithImpl;
@override @useResult
$Res call({
 bool success, String message
});




}
/// @nodoc
class __$RegisterModelCopyWithImpl<$Res>
    implements _$RegisterModelCopyWith<$Res> {
  __$RegisterModelCopyWithImpl(this._self, this._then);

  final _RegisterModel _self;
  final $Res Function(_RegisterModel) _then;

/// Create a copy of RegisterModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? message = null,}) {
  return _then(_RegisterModel(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
