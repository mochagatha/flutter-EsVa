import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserData {


  static late SharedPreferences _preferences;
  static const _keyUser = 'user';

  static User myUser = User(
    image:
        "https://firebasestorage.googleapis.com/v0/b/mochagatha-45596.appspot.com/o/images%2Fname?alt=media&token=467f3ea0-3ced-413b-a6a3-d44eabceecb0",
    name: 'Moch Agatha',
    email: 'mochagatha271@gmail.com',
    phone: '(+62)895-3971-3325',
    aboutMeDescription:
        ''
  );

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future setUser(User user) async {
    final json = jsonEncode(user.toJson());

    await _preferences.setString(_keyUser, json);
  }

  static User getUser() {
    final json = _preferences.getString(_keyUser);

    return json == null ? myUser : User.fromJson(jsonDecode(json));
  }
}
