import 'package:flutter/material.dart';
import 'package:new_app/buttons/buttons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Padding(
              padding: const EdgeInsets.all(20),
              child: Row(children: const [
                Text('Hello Pikachu!',
                    softWrap: true,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
                Spacer(),
                UserPotrait()
              ])),
          Padding(
              padding: const EdgeInsets.all(10),
              child: Column(children: const [
                ButtonBuilder(Icons.login, '/login'),
                ButtonBuilder(Icons.photo_camera_outlined, '/camera')
              ])),
        ])));
  }
}
