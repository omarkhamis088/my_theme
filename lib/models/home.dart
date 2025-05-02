import 'package:flutter/material.dart';
import 'package:my_theme/main.dart';
import 'package:my_theme/models/theme_proveder.dart';
import 'package:provider/provider.dart';
import 'changeThemeButton.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final text = Provider.of<ThemeProveder>(context).themeMode == ThemeMode.dark
        ? 'DarkTheme'
        : 'LightTheme';
    return Scaffold(
      bottomNavigationBar: Container(
        //margin: EdgeInsets.symmetric(horizontal: 12, vertical: 100),
        height: 60,
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.home_rounded),
            Icon(Icons.search),
            Icon(Icons.camera_alt),
            Icon(Icons.notifications),
            Icon(Icons.person),
          ],
        ),
      ),
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: Theme.of(context).iconTheme,
        actionsIconTheme: Theme.of(context).primaryIconTheme,
        title: Text(MyApp.title),
        backgroundColor: Theme.of(context).primaryColor,
        actions: [
          ChangeTheme(),
        ],
      ),
      body: DownBar(),
    );
  }
}

class DownBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final text = Provider.of<ThemeProveder>(context).themeMode == ThemeMode.dark
        ? 'DarkTheme'
        : 'LightTheme';
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(50),
          margin: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
          child: Text(
            "Hello $text",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        // ignore: deprecated_member_use
        RaisedButton(
          onPressed: () {
            ChangeTheme();
          },
          child: Text("Hi"),
        ),
      ],
    );
  }
}
