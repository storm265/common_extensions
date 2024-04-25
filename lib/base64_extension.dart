import 'dart:convert';

extension Base64Extension on String {
  String base64encode() => base64.encode(utf8.encode(this));
}
