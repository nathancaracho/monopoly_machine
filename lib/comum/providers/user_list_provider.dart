import 'package:flutter/cupertino.dart';
import 'package:monopoly_machine/comum/models/user_mode.dart';

class UserListProvider with ChangeNotifier {
  final List<UserModel> _userList = [];
  List<UserModel> get userList => _userList;

  void addUser(UserModel user) {
    _userList.add(user);
    notifyListeners();
  }
}
