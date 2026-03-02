import 'dart:convert';

import 'package:flutter/services.dart';

class JsonLoader {
  JsonLoader({AssetBundle? bundle}) : bundle = bundle ?? rootBundle;

  final AssetBundle bundle;
  final Map<String, dynamic> _cache = {};

  Future<dynamic> load(String path) async {
    if (_cache.containsKey(path)) return _cache[path];
    final jsonStr = await bundle.loadString(path);
    final data = json.decode(jsonStr);
    _cache[path] = data;
    return data;
  }
}
