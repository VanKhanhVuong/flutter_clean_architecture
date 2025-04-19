import 'package:fluttercleanarchitecture/common/dtos/only_message_response/only_message_response.dart';
import 'package:fluttercleanarchitecture/features/auth/data/delete_account/dto/request/delete_account_request.dart';

abstract interface class IDeleteAccountRepository {
  Future<OnlyMessageResponse> deleteAccount(DeleteAccountRequest data);
}
