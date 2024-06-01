import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool? isChecked = false;

  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpassController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Image.asset(
                        'assets/images/loginScreen2.png',
                        width: constraints.maxWidth,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 80,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Sign Up",
                                    style: TextStyle(
                                      fontSize: 29,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Create a new account",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: constraints.maxHeight * 0.1,
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Please Enter A Valid Name!";
                                  }
                                  return null;
                                },
                                controller: usernameController,
                                cursorColor: Colors.black,
                                decoration: const InputDecoration(
                                  suffixIcon: Icon(Icons.person),
                                  labelText: 'Username',
                                  labelStyle: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: constraints.maxHeight * 0.1,
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Please Enter Your Email!";
                                  }
                                  return null;
                                },
                                controller: emailController,
                                cursorColor: Colors.black,
                                decoration: const InputDecoration(
                                  suffixIcon: Icon(Icons.verified),
                                  labelText: 'Email',
                                  labelStyle: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: constraints.maxHeight * 0.1,
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Please Enter Your Password!";
                                  }
                                  return null;
                                },
                                controller: passwordController,
                                obscureText: true,
                                obscuringCharacter: '*',
                                cursorColor: Colors.black,
                                decoration: const InputDecoration(
                                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                                  labelText: 'Password',
                                  labelStyle: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: constraints.maxHeight * 0.1,
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Please Confirm Your Password!";
                                  }
                                  return null;
                                },
                                controller: confirmpassController,
                                obscureText: true,
                                obscuringCharacter: '*',
                                cursorColor: Colors.black,
                                decoration: const InputDecoration(
                                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                                  labelText: 'Confirm Password',
                                  labelStyle: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: isChecked,
                                  onChanged: (value) {
                                    setState(() {
                                      isChecked = value;
                                    });
                                  },
                                ),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "By creating an account you have to agree",
                                      style: TextStyle(fontWeight: FontWeight.w400),
                                    ),
                                    Text("with our terms & conditions"),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 19),
                              child: SizedBox(
                                height: constraints.maxHeight * 0.06,
                                width: constraints.maxWidth,
                                child: ElevatedButton(
                                  onPressed: () {
                                    checkLogin(context);
                                    if (formKey.currentState!.validate()) {
                                      Navigator.pushNamed(context, 'successful');
                                    }
                                  },
                                  style: ButtonStyle(
                                    backgroundColor: WidgetStateProperty.all(Colors.black),
                                    foregroundColor: WidgetStateProperty.all(Colors.white),
                                  ),
                                  child: const Text(
                                    "Login",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void checkLogin(BuildContext ctx) {
    final username = usernameController.text;
    final email = emailController.text;
    final password = passwordController.text;
    final confirmPass = confirmpassController.text;

    if (username == email && password == confirmPass) {
      // Handle successful signup
    } else {
      // Handle error
    }
  }
}
