import 'package:firedart/firedart.dart';
import 'package:hive_flutter/hive_flutter.dart';

/// `TokenAdapter` adalah adapter Hive yang digunakan untuk mengonversi objek `Token`
/// menjadi bentuk yang sesuai untuk disimpan di Hive Box dan sebaliknya.
class TokenAdapter extends TypeAdapter<Token> {
  @override
  final typeId = 42;

  /// Metode `write` digunakan untuk menulis objek Token ke Hive.
  @override
  void write(BinaryWriter writer, Token token) =>
      writer.writeMap(token.toMap());

  /// Metode `read` digunakan untuk membaca objek Token dari Hive.
  @override
  Token read(BinaryReader reader) =>
      Token.fromMap(reader.readMap().map<String, dynamic>(
          (key, value) => MapEntry<String, dynamic>(key, value)));
}
