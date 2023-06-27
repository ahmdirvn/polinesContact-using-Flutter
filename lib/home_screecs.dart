import 'package:flutter/material.dart';
import 'package:polines_contact/app_style.dart';
import 'package:polines_contact/home_admin.dart';
import 'package:polines_contact/home_user.dart';
import 'main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppStyle.bar,
        body: Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/logo.png"),
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
            child: Align(
                alignment: Alignment.center,
                child: Column(children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 300, 20, 0),
                  ),
                  Text('POLTACT',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  Text('Polines Contact',
                      style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 30,
                      )),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 100, 20, 0),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.yellow,
                    ),
                    child: const Text(
                      'Masuk Admin',
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => MyHomePage()));
                    },
                  ),
                  ElevatedButton(
                    child: const Text(
                      'Masuk Sebagai Tamu',
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Home_user()));
                    },
                  ),
                ]))));
  }
}
