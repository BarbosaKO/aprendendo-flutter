import 'package:flutter/material.dart';

class UserController extends ChangeNotifier {
  static UserController instance = UserController();

  String email = '';
  String senha = '';
}
