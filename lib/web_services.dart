
import 'package:dio/dio.dart';
import 'package:omar_ahmad/user_model.dart';
import 'package:retrofit/retrofit.dart';

part 'web_services.g.dart';

@RestApi(baseUrl: "https://gorest.co.in/public/v2/")
abstract class WebServices{
  factory WebServices(Dio dio, {String baseUrl}) = _WebServices;

  @GET("users")
  Future<List<UserModel>> getAllUsers();
}