import 'package:flutter/material.dart';
import 'package:nbaapp/common/sign_in_button.dart';
import 'package:nbaapp/common/square_tile.dart';
import 'package:nbaapp/common/text_field.dart';
import 'package:nbaapp/firebase/auth_facade.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // Firebase Auth handler
  AuthFacade? authFacade;

  // Text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    authFacade = AuthFacade(context: context);
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Icon(Icons.lock, size: 100),
              const SizedBox(
                height: 50,
              ),
              Text(
                "Welcome back, you've been missed!",
                style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
              ),
              const SizedBox(
                height: 25,
              ),
              commonTextField(
                controller: usernameController,
                hintText: "Username",
                obscureText: false,
              ),
              const SizedBox(
                height: 10,
              ),
              commonTextField(
                controller: passwordController,
                hintText: "Password",
                obscureText: true,
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              commonSignInButton(
                onTap: authFacade?.signUserInEP,
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey.shade400,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        "Or continue with",
                        style: TextStyle(
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey.shade400,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(
                    imagePath: "lib/res/images/google.png",
                    onTap: authFacade?.signUserInGoogle,
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  SquareTile(
                    imagePath: "lib/res/images/apple.png",
                    onTap: authFacade?.signUserInApple,
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Not a member?"),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Register now",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
