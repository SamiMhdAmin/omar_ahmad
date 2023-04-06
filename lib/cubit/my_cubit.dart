import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:omar_ahmad/my_repo.dart';
import 'package:omar_ahmad/user_model.dart';

part 'my_state.dart';

class MyCubit extends Cubit<MyState> {
  MyCubit(this.myrepo) : super(MyInitial());
  final MyRepo myrepo;

  void emitGetAllUsers(){
    myrepo.getAllUsers().then((usersList) {
      emit(GetAllUsers(usersList));
    });
  }
}
