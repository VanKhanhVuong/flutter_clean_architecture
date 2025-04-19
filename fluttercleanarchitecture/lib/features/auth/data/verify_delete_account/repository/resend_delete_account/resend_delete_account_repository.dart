import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/dtos/only_message_response/only_message_response.dart';
import 'package:fluttercleanarchitecture/common/utils/parse_error_util.dart';
import 'package:fluttercleanarchitecture/common/exception/failure.dart';
import 'package:fluttercleanarchitecture/features/auth/data/verify_delete_account/dto/request/resend_delete_account/resend_delete_account_request.dart';
import 'package:fluttercleanarchitecture/features/auth/data/verify_delete_account/repository/resend_delete_account/iresend_delete_account_repository.dart';
import 'package:fluttercleanarchitecture/features/auth/data/verify_delete_account/source/remote/resend_delete_account/resend_delete_account_api.dart';

final resendDeleteAccountRepositoryProvider =
    Provider<IResendDeleteAccountRepository>((ref) {
      final resendDeleteAccountApi = ref.watch(resendDeleteAccountApiProvider);
      return ResendDeleteAccountRepository(resendDeleteAccountApi);
    });

final class ResendDeleteAccountRepository
    implements IResendDeleteAccountRepository {
  final ResendDeleteAccountApi _resendDeleteAccountApi;
  ResendDeleteAccountRepository(this._resendDeleteAccountApi);

  @override
  Future<OnlyMessageResponse> resendDeleteAccount(
    ResendDeleteAccountRequest data,
  ) async {
    try {
      final response = await _resendDeleteAccountApi.resendDeleteAccount(data);
      return response;
    } on DioException catch (e) {
      final errorMessage = parseValidationError(e.response?.data['error']);
      throw Failure(message: errorMessage);
    } catch (e, s) {
      throw Failure(
        message: 'Lỗi không xác định: $e',
        exception: e is Exception ? e : Exception(e.toString()),
        stackTrace: s,
      );
    }
  }
}
