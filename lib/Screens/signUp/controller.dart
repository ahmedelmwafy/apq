import 'package:apq/Screens/signUp/model.dart';
import 'package:apq/helpers/network.dart';
import 'package:dio/dio.dart';

class SignIpController {
  NetWork netWork = NetWork();
  SignUpModel signUpModel = SignUpModel();

  Future<SignUpModel> postSignUp(
      {String name, String email, String phone, String password}) async {
    FormData formData = FormData.fromMap({
      'name': name,
      'email': email,
      'phone': phone,
      'password': password,
    });
    var data = await netWork.postData(url: '/register', formData: formData);
    print(data);

    signUpModel = SignUpModel.fromJson(data);
    return signUpModel;
  }
}
