import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/dtos/only_message_response/only_message_response.dart';
import 'package:fluttercleanarchitecture/common/utils/parse_error_util.dart';
import 'package:fluttercleanarchitecture/common/exception/failure.dart';
import 'package:fluttercleanarchitecture/features/auth/data/delete_account/dto/request/delete_account_request.dart';
import 'package:fluttercleanarchitecture/features/auth/data/delete_account/repository/idelete_account_repository.dart';
import 'package:fluttercleanarchitecture/features/auth/data/delete_account/source/remote/delete_account_api.dart';

final deleteAccountRepositoryProvider = Provider<IDeleteAccountRepository>((
  ref,
) {
  final deleteAccountApi = ref.watch(deleteAccountApiProvider);
  return DeleteAccountRepository(deleteAccountApi);
});

final class DeleteAccountRepository implements IDeleteAccountRepository {
  final DeleteAccountApi _deleteAccountApi;
  DeleteAccountRepository(this._deleteAccountApi);

  @override
  Future<OnlyMessageResponse> deleteAccount(DeleteAccountRequest data) async {
    try {
      final response = await _deleteAccountApi.deleteAccount(data);
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
