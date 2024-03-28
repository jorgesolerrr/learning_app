import 'dart:convert';

import 'package:encrypt/encrypt.dart' as encrypt;
import 'package:flutter_dotenv/flutter_dotenv.dart';

String cryptPassword(String psw, {bool decrypt = true}) {
  final fernetKey = dotenv.env["APP_FERMET_KEY"];
  final fernetKeyEncode = utf8.encode(fernetKey!);
  final key = encrypt.Key(fernetKeyEncode);
  final fernet = encrypt.Fernet(key);
  final pswEncode = utf8.encode(psw);

  if (decrypt) {
    final pswDecrypt = fernet.decrypt(encrypt.Encrypted(pswEncode));
    return utf8.decode(pswDecrypt);
  }
  else {
    final pswEncrypted = fernet.encrypt(pswEncode);
    return utf8.decode(pswEncrypted.bytes);
  }
}


