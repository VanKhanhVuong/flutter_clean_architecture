import 'package:fluttercleanarchitecture/features/signup/domain/model/register_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.freezed.dart';

@freezed
abstract class RegisterState with _$RegisterState {
  factory RegisterState({
    // RegisterModel? registerModel,
    @Default(false) bool isLoading,
    bool? isSuccess,
    String? errorMessage,
    @Default({}) Map<String, dynamic> registerFrom,
  }) = _RegisterState;
}
