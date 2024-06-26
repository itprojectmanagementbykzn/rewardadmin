import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'model/user.dart';

class Utils {
  static showSnackBar(BuildContext context, String text) {
    final snackBar = SnackBar(content: Text(text));

    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  static List<T> modelBuilder<M, T>(
          List<M> models, T Function(int index, M model) builder) =>
      models
          .asMap()
          .map<int, T>((index, model) => MapEntry(index, builder(index, model)))
          .values
          .toList();

  static Future loadUsers() async {
    final data = await rootBundle.loadString('assets/user_codes.json');
    final countriesJson = json.decode(data);

    return countriesJson.keys.map<User>((code) {
      final json = countriesJson[code];
      final newJson = json..addAll({'code': code.toLowerCase()});

      return User.fromJson(newJson);
    }).toList()
      ..sort(Utils.ascendingSort);
  }

  static int ascendingSort(User c1, User c2) =>
      c1.name.compareTo(c2.name);
}
