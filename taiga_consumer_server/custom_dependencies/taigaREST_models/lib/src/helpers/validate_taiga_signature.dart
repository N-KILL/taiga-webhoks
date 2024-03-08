import 'dart:convert';
import 'package:crypto/crypto.dart';

// TODO(NACHO): Fix This
///
class ValidateTaigaSignature {
  ///
  static Future<bool> verifySignature({
    required String key,
    required String data,
    required String signature,
  }) async {
    // SecretKey en utf8
    final keyUtf8 = utf8.encode(key);

    // Payload en utf8
    final utf8Data = utf8.encode(data);

    // Algoritmo sha1 + secret key
    final hmac = Hmac(sha1, keyUtf8);

    final mac = hmac.convert(utf8Data);

    print(mac.toString());

    // Devolvemos true o false comparando la signature ignresada con la generada
    return mac.toString() == signature;
  }
}

// Future<void> main() async {
//   const secret = 'B8AC34D22CFB5'; // Key
//   const payload = // Data
//       '{}';
//   const signature = ''; // Signature
//   if (await ValidateTaigaSignature.verifySignature(
//     data: payload,
//     key: secret,
//     signature: signature,
//   )) {
//     print('Signature valida');
//   } else {
//     print('Signature no valida');
//   }
// }
