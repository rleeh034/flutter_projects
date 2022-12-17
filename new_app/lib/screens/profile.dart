import 'package:flutter/material.dart';
import 'package:new_app/buttons/buttons.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
              margin: const EdgeInsets.all(20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    ButtonBuilder(Icons.arrow_back_ios_new, '/back')
                  ])),
        ])));
  }
}
