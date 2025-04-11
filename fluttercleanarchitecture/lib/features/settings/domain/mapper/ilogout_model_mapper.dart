import 'package:fluttercleanarchitecture/common/dtos/only_message_response/only_message_response.dart';
import 'package:fluttercleanarchitecture/core/domain/model/only_message_model/only_message_model.dart';

abstract interface class ILogoutModelMapper {
  OnlyMessageModel mapToLogoutModel(OnlyMessageResponse response);
}
