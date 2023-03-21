import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './modal.dart';

class savedData with ChangeNotifier {
  datal data = datal("non");

  void getData() async {
    final SharedPreferences inst = await SharedPreferences.getInstance();
    data.valing =
        (inst.getString("key") != null) ? (inst.getString("key")!) : "nodata";

    notifyListeners();
  }

  datal get value {
    getData();
    return data;
  }

  void setingVvalue(String value) async {
    final SharedPreferences inst = await SharedPreferences.getInstance();
    inst.setString("key", value);

    getData();
  }
}
