import 'package:flutter/material.dart';
import 'package:nordic_puffin_task/Presentation/Login/view/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<void> _logout() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setBool("isLogin", false);
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        leading: IconButton(
            onPressed: () {
              _logout();
            },
            icon: Icon(Icons.logout)),
        centerTitle: true,
      ),
    );
  }
}
