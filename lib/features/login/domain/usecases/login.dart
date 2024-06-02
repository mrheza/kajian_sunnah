import 'package:dio/dio.dart';
import 'package:kajian_sunnah/features/login/data/models/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginService {
  var dio = Dio();
  Future<void> login(email, password) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      var response =
          await dio.post('https://stackovercode.my.id/api/v1/auth/login',
              data: {"email": email, "password": password},
              options: Options(
                headers: {
                  'Content-Type': 'application/json',
                  'Accept': 'application/json',
                },
              ));

      if (response.statusCode == 200) {
        var model = LoginResponse.fromJson(response.data);
        prefs.setString('token', model.result.token);
        print(prefs.getString('token'));
      }
    } catch (e) {
      print(e.toString());
    }
  }

  logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('token');
    print(prefs.getString('token'));
  }
}
