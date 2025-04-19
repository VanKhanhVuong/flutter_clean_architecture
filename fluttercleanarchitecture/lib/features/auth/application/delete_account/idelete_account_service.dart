import 'package:fluttercleanarchitecture/common/exception/failure.dart';
import 'package:fluttercleanarchitecture/core/domain/model/only_message_model/only_message_model.dart';
import 'package:fluttercleanarchitecture/features/auth/data/delete_account/dto/request/delete_account_request.dart';

import 'package:multiple_result/multiple_result.dart';

abstract interface class IDeleteAccountService {
  Future<Result<OnlyMessageModel, Failure>> deleteAccount(
    DeleteAccountRequest data,
  );
}
