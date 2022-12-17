import 'package:flutter/material.dart';
// import 'package:new_app/buttons/buttons.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  LoginPageState createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final isValidEmail = RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Form(
            key: _formKey,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              // Container(
              //     margin: const EdgeInsets.fromLTRB(0, 20, 10, 0),
              //     child: Row(
              //         mainAxisAlignment: MainAxisAlignment.end,
              //         children: const [
              //           ButtonBuilder(Icons.arrow_back_ios_new, '/back')
              //         ])),
              Expanded(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text('猫',
                                      style: TextStyle(
                                          fontSize: 70,
                                          fontWeight: FontWeight.bold)))
                            ])),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                        child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Email cannot be blank';
                              } else if (!isValidEmail.hasMatch(value)) {
                                return 'Please enter a valid email';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                icon: const Icon(Icons.person),
                                hintText: 'E-mail',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide.none)))),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                        child: TextFormField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                icon: const Icon(Icons.lock),
                                hintText: 'Password',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide.none)),
                            obscureText: true)),
                    InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/home');
                        },
                        child: const Text('Forgot your password?',
                            style: TextStyle(color: Colors.blue))),
                    Container(
                        margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        height: 40,
                        width: 150,
                        child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text('Logging In')),
                                );
                              }
                            },
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)))),
                            child: const Text('Login'))),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('Dont have an account? '),
                              InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(context, '/home');
                                  },
                                  child: const Text('Sign up',
                                      style: TextStyle(color: Colors.blue)))
                            ])),
                  ])),
            ])));
  }
}
