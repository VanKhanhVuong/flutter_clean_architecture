import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/core/data/remote/network_service.dart';
import 'package:fluttercleanarchitecture/features/auth/reset_password/data/dto/request/reset_password/reset_password_request.dart';
import 'package:fluttercleanarchitecture/features/auth/reset_password/data/dto/response/reset_password/reset_password_response.dart';
import 'package:retrofit/retrofit.dart';

part 'reset_password_api.g.dart';

final resetPasswordApiProvider = Provider<ResetPasswordApi>((ref) {
  final dio = ref.watch(networkServiceProvider);
  return ResetPasswordApi(dio);
});

@RestApi()
abstract class ResetPasswordApi {
  factory ResetPasswordApi(Dio dio) => _ResetPasswordApi(dio);

  @POST('/api/reset/password')
  Future<ResetPasswordResponse> resetPassword(
    @Body() ResetPasswordRequest body,
  );
}
