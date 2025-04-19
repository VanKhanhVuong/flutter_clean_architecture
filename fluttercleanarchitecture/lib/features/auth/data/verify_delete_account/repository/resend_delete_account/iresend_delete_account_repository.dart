import 'package:fluttercleanarchitecture/common/dtos/only_message_response/only_message_response.dart';
import 'package:fluttercleanarchitecture/features/auth/data/verify_delete_account/dto/request/resend_delete_account/resend_delete_account_request.dart';

abstract interface class IResendDeleteAccountRepository {
  Future<OnlyMessageResponse> resendDeleteAccount(
    ResendDeleteAccountRequest data,
  );
}
