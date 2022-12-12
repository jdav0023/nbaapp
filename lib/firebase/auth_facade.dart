import 'package:flutter/material.dart';
import 'package:nbaapp/common/alert_dialog.dart';

class AuthFacade {
  final BuildContext context;

  AuthFacade({required this.context});

  void showAlert(String details) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return commonAlertDialog(details: details, context: context);
        });
  }

  void signUserInEP() {
    showAlert("Sign in with email and password.");
  }

  void signUserInGoogle() {
    showAlert("Sign in with google.");
  }

  void signUserInApple() {
    showAlert("Sign in with apple.");
  }

  void registerAccount() {}

  void forgotPassword() {}
}
