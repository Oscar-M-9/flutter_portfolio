import 'dart:async' show Future;
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class DataInfoService extends ChangeNotifier {
  Future<String> _loadData() async {
    return await rootBundle.loadString('lib/assets/json/data_info.json');
  }

  Future loadDataInfo() async {
    String jsonString = await _loadData();
    final jsonResponse = json.decode(jsonString);
    return jsonResponse;
  }
}
