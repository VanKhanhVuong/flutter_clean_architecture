import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/features/settings/data/repository/isetting_respository.dart';
import 'package:fluttercleanarchitecture/features/settings/data/source/local/isetting_storage.dart';
import 'package:fluttercleanarchitecture/features/settings/data/source/local/setting_storage.dart';

final settingRepositoryProvider = Provider<ISettingRepository>((ref) {
  final settingStorage = ref.watch(settingStorageProvider);

  return SettingRepository(settingStorage);
});

final class SettingRepository implements ISettingRepository {
  final ISettingStorage _settingStorage;

  SettingRepository(this._settingStorage);

  @override
  Future<void> clearToken() async {
    try {
      await _settingStorage.clearToken();
    } catch (_) {
      rethrow;
    }
  }
}
