import 'package:omar_ahmad/user_model.dart';
import 'package:omar_ahmad/web_services.dart';

class MyRepo {
  WebServices webServices;
  MyRepo(
    this.webServices,
  );

  Future<List<UserModel>> getAllUsers() async {
    var response = await webServices.getAllUsers();
    return response
        .map((singleUserModel) => UserModel.fromJson(singleUserModel.toJson()))
        .toList();
  }
}
