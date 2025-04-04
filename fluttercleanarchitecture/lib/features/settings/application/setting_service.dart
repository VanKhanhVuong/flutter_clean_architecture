import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/features/settings/application/isetting_service.dart';
import 'package:fluttercleanarchitecture/features/settings/data/repository/isetting_respository.dart';
import 'package:fluttercleanarchitecture/features/settings/data/repository/setting_respository.dart';

final settingServiceProvider = Provider<ISettingService>((ref) {
  final settingRepository = ref.watch(settingRepositoryProvider);

  return SettingService(settingRepository);
});

final class SettingService implements ISettingService {
  final ISettingRepository _settingRepository;

  SettingService(this._settingRepository);

  @override
  Future<void> clearToken() async {
    try {
      await _settingRepository.clearToken();
    } catch (_) {
      rethrow;
    }
  }
}
