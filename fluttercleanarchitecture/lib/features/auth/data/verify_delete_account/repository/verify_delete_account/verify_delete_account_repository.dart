import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/dtos/only_message_response/only_message_response.dart';
import 'package:fluttercleanarchitecture/common/utils/parse_error_util.dart';
import 'package:fluttercleanarchitecture/common/exception/failure.dart';
import 'package:fluttercleanarchitecture/features/auth/data/verify_delete_account/dto/request/verify_delete_account/verify_delete_account_request.dart';
import 'package:fluttercleanarchitecture/features/auth/data/verify_delete_account/repository/verify_delete_account/iverify_delete_account_repository.dart';
import 'package:fluttercleanarchitecture/features/auth/data/verify_delete_account/source/remote/verify_delete_account/verify_delete_account_api.dart';

final verifyDeleteAccountRepositoryProvider =
    Provider<IVerifyDeleteAccountRepository>((ref) {
      final verifyDeleteAccountApi = ref.watch(verifyDeleteAccountApiProvider);
      return VerifyDeleteAccountRepository(verifyDeleteAccountApi);
    });

final class VerifyDeleteAccountRepository
    implements IVerifyDeleteAccountRepository {
  final VerifyDeleteAccountApi _verifyDeleteAccountApi;
  VerifyDeleteAccountRepository(this._verifyDeleteAccountApi);

  @override
  Future<OnlyMessageResponse> verifyDeleteAccount(
    VerifyDeleteAccountRequest data,
  ) async {
    try {
      final response = await _verifyDeleteAccountApi.verifyDeleteAccount(data);
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
