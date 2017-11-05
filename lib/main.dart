import 'package:flutter/material.dart';
import 'screen_my_giftcards.dart';
import 'giftcard.dart';

List<Giftcard> myGiftcards =
[
  new Giftcard
  (
    company: "Amazon",
    value: 25.0,
    last4Digits: "7156",
    img: "res/logo/amazon.png",
  ),
  new Giftcard
  (
    company: "Apple / iTunes",
    value: 100.0,
    last4Digits: "2558",
    img: "res/logo/apple.png",
  ),
  new Giftcard
  (
    company: "Google Play",
    value: 50.0,
    last4Digits: "4516",
    img: "res/logo/google_play.png",
  ),
  new Giftcard
  (
    company: "Steam",
    value: 50.0,
    last4Digits: "3427",
    img: "res/logo/steam.png",
  ),
];

List<Giftcard> pendingGiftcards = new List();

void main()
{
  runApp(new MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return new MaterialApp
    (
      title: 'Gift card exchange',
      theme: new ThemeData
      (
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.pink,
      ),
      home: new ScreenMyGiftcards()
    );
  }
}