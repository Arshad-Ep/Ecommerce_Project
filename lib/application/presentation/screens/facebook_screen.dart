import 'package:commercejs_project/application/presentation/widgets/facebook_screen.dart/facebook_divider_widget.dart';
import 'package:commercejs_project/application/presentation/widgets/facebook_screen.dart/facebook_new_acount_widget.dart';
import 'package:commercejs_project/application/presentation/widgets/facebook_screen.dart/facebook_page_widget.dart';
import 'package:flutter/material.dart';

class FacebookScreen extends StatefulWidget {
  const FacebookScreen({Key? key}) : super(key: key);

  @override
  State<FacebookScreen> createState() => _FacebookScreenState();
}

class _FacebookScreenState extends State<FacebookScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
                  child: Text(
                    'Facebook',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[900],
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1, vertical: 1),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                    child: TextFormField(
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                        suffixIcon: Icon(Icons.verified_sharp),
                        labelText: 'Email',
                        labelStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1, vertical: 1),
                  child: TextFormField(
                    obscureText: true,
                    obscuringCharacter: '*',
                    cursorColor: Colors.black,
                    decoration: const InputDecoration(
                      suffixIcon: Icon(Icons.remove_red_eye),
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),

                const FacebookLoginWidget(),

                const FacebookDividerWidget(),

                const FacebookNewAccountWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}






