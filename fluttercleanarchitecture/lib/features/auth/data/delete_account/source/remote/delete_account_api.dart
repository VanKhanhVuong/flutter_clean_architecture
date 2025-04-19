import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/dtos/only_message_response/only_message_response.dart';
import 'package:fluttercleanarchitecture/core/data/remote/network_service.dart';
import 'package:fluttercleanarchitecture/features/auth/data/delete_account/dto/request/delete_account_request.dart';
import 'package:retrofit/retrofit.dart';

part 'delete_account_api.g.dart';

final deleteAccountApiProvider = Provider<DeleteAccountApi>((ref) {
  final dio = ref.watch(networkServiceProvider);
  return DeleteAccountApi(dio);
});

@RestApi()
abstract class DeleteAccountApi {
  factory DeleteAccountApi(Dio dio) => _DeleteAccountApi(dio);

  @POST('/api/request/delete/account')
  Future<OnlyMessageResponse> deleteAccount(@Body() DeleteAccountRequest body);
}
