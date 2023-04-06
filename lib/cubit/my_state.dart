part of 'my_cubit.dart';

@immutable
abstract class MyState {}

class MyInitial extends MyState {}

class GetAllUsers extends MyState {
  final List<UserModel> users;
  GetAllUsers(
    this.users,
  );
}
