import 'package:flutter/material.dart';

class ButtonBuilder extends StatelessWidget {
  final IconData icon;
  final String route;
  const ButtonBuilder(this.icon, this.route, {super.key}); // change this

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: <Widget>[
      Container(
          height: 40,
          width: 40,
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.5),
            shape: BoxShape.circle,
            boxShadow: const [
              BoxShadow(
                  color: Colors.blue,
                  offset: Offset(0, 7),
                  blurRadius: 6.0,
                  spreadRadius: -9.0)
            ],
          )),
      Container(
          height: 30,
          width: 30,
          decoration:
              const BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
          child: IconButton(
            padding: const EdgeInsets.all(0),
            icon: Icon(icon, color: Colors.white),
            onPressed: () => {
              if (route == '/back')
                [Navigator.pop(context)]
              else
                [Navigator.pushNamed(context, route)]
            },
          ))
    ]);
  }
}

class UserPotrait extends StatelessWidget {
  const UserPotrait({super.key}); // change this

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: <Widget>[
      Container(
          height: 60,
          width: 60,
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.5),
            shape: BoxShape.circle,
            boxShadow: const [
              BoxShadow(
                  color: Colors.blue,
                  offset: Offset(0, 7),
                  blurRadius: 6.0,
                  spreadRadius: -9.0)
            ],
          )),
      Container(
          height: 50,
          width: 50,
          decoration:
              const BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
          child: IconButton(
            padding: const EdgeInsets.all(0),
            icon: const Icon(Icons.account_circle_outlined,
                color: Colors.white, size: 40),
            onPressed: () => {Navigator.pushNamed(context, '/profile')},
          ))
    ]);
  }
}
