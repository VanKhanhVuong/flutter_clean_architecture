import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/core/data/local/secure_storage/isecure_storage.dart';
import 'package:fluttercleanarchitecture/core/data/local/secure_storage/secure_storage.dart';
import 'package:fluttercleanarchitecture/core/data/local/secure_storage/secure_storage_const.dart';
import 'package:fluttercleanarchitecture/features/settings/data/source/local/isetting_storage.dart';

final settingStorageProvider = Provider<ISettingStorage>((ref) {
  final secureStorage = ref.watch(secureStorageProvider);

  return SetingStorage(secureStorage);
});

class SetingStorage implements ISettingStorage {
  final ISecureStorage _secureStorage;

  SetingStorage(this._secureStorage);

  @override
  Future<void> clearToken() async {
    await _secureStorage.delete(accessTokenKey);
    await _secureStorage.delete(refreshTokenKey);
    await _secureStorage.delete(userIdKey);
  }
}
