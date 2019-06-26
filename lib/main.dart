import 'package:flutter/material.dart';
import 'package:flutter_whatsup/pages/create_chat_screen.dart';
import 'package:flutter_whatsup/pages/setting_screen.dart';
import 'package:flutter_whatsup/whatsapp_home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'WhatsApp',
      theme: ThemeData(
        fontFamily: 'Vazir',
        primaryColor: new Color(0xff075E54),
        accentColor:  new Color(0xff25d366)
      ),
      routes: {
        "/setting" : (context) => new SettingScreen(),
        "/new_chat" : (context) => new CreateChatScreen()
      },
      debugShowCheckedModeBanner: false,
      home: new Directionality(textDirection: TextDirection.rtl, child: WhatsAppHome())
    );
  }
}