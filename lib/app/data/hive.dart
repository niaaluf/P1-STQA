import 'package:firedart/firedart.dart';
import 'package:hive_flutter/hive_flutter.dart';

/// Buat kelas 'HiveStore' yang mengimplementasikan 'TokenStore' dari firedart
class HiveStore extends TokenStore {
  final Box _box;
  HiveStore._internal(this._box);
  /// Kunci untuk menyimpan token di dalam Hive box
  static const keyToken = "auth_token";

  /// Metode untuk membuat instance 'HiveStore'
  static Future<HiveStore> create() async {

    /// Membuka Hive box 'auth_store' dengan strategi kompaksi
    var box = await Hive.openBox("auth_store",
        compactionStrategy: (entries, deletedEntries) => deletedEntries > 50);
    return HiveStore._internal(box);
  }

  @override
  void delete() {
    /// Menghapus token dari Hive box
    _box.delete(keyToken);
  }

  @override
  Token? read() {
    /// Membaca token dari Hive box
    return _box.get(keyToken);
  }

  @override
  void write(Token? token) {
    /// Menyimpan token ke dalam Hive box
    _box.put(keyToken, token);
  }
}
