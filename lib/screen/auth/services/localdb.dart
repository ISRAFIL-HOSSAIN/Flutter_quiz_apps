import 'package:shared_preferences/shared_preferences.dart';

class LocalDB {
  static final uidkey = "abcdkfjk";
  static Future<bool> saveUserID(String uid) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(uidkey, uid);
  }

  static Future<String?> getUserID() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return  preferences.getString(uidkey);
  }
}
