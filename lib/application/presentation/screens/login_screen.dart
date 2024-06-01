import 'package:commercejs_project/application/presentation/widgets/login_screen/divider_line_widget.dart';
import 'package:commercejs_project/application/presentation/widgets/login_screen/facebook_button_widget.dart';
import 'package:commercejs_project/application/presentation/widgets/login_screen/login_button_widget.dart';
import 'package:commercejs_project/application/presentation/widgets/login_screen/social_button_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Image.asset('assets/images/loginScreen2.png'),
                const Padding(
                  padding: EdgeInsets.only(right: 230, bottom: 10),
                  child: Text(
                    'Welcome!',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 50, bottom: 40),
                  child: Text(
                    'please login or sign up to continue our app.',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 29, vertical: 7),
                  child: SizedBox(
                    height: 90,
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please Enter Your Email';
                        }
                        return null;
                      },
                      controller: _emailController,
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                          suffixIcon: Icon(Icons.verified_sharp),
                          labelText: 'Email',
                          labelStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 29, vertical: 7),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter Your Password";
                      }
                      return null;
                    },
                    controller: _passwordController,
                    obscureText: true,
                    obscuringCharacter: '*',
                    cursorColor: Colors.black,
                    decoration: const InputDecoration(
                        suffixIcon: Icon(Icons.remove_red_eye),
                        labelText: 'Password',
                        labelStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                  ),
                ),

                LoginButtonWidget(formKey: formKey),

                const DividerLineWidget(),

                const FacebookButtonWidget(),

                const SocialButtonWidget(),

                
              ],
            ),
          ),
        ),
      ),
    );
  }

  void checkLogin(BuildContext ctx) {
    final email = _emailController;
    final password = _passwordController;

    if (email == password) {
    } else {}
  }
}




