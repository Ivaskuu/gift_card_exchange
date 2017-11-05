import 'package:flutter/material.dart';
import 'screen_pending_giftcards.dart';
import 'screen_my_giftcards.dart';
import 'main.dart';

class NavigationDrawer extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return new Drawer
    (
      child: new ListView
      (
        children: <Widget>
        [
          new Container
          (
            margin: new EdgeInsets.only(top: 32.0, bottom: 32.0),
            child: new Column
            (
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>
              [
                new CircleAvatar
                (
                  radius: 64.0,
                  backgroundImage: new AssetImage("res/me.jpg"),
                ),
                new Container
                (
                  margin: new EdgeInsets.only(top: 16.0),
                  child: new Text("Ivascu Adrian", style: Theme.of(context).textTheme.title, textScaleFactor: 1.4),
                ),
              ],
            ),
          ),
          new FlatButton
          (
            onPressed: () => Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (_) => new ScreenMyGiftcards())),
            child: new ListTile
            (
              leading: new Icon(Icons.card_giftcard),
              title: new Row
              (
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>
                [
                  new Text("My gift cards"),
                  new Container
                  (
                    margin: new EdgeInsets.only(left: 8.0),
                    child: new Chip(label: new Text("${myGiftcards.length}"))
                  )
                ]
              )
            ),
          ),
          new FlatButton
          (
            onPressed: () => Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (_) => new ScreenPendingGiftcards())),
            child: new ListTile
            (
              leading: new Icon(Icons.autorenew),
              title: new Text("Pending gift cards"),
            ),
          ),
          new FlatButton
          (
            onPressed: () => null,
            child: new ListTile
            (
              leading: new Icon(Icons.settings),
              title: new Text("Settings"),
            ),
          ),
          new Container
          (
            margin: new EdgeInsets.only(top: 16.0, left: 72.0, right: 72.0),
            child: new FlatButton
            (
              onPressed: () => null,
              child: new ListTile
              (
                title: new Text("LOGOUT", style: new TextStyle(color: Colors.blueAccent)),
                trailing: new Icon(Icons.exit_to_app, color: Colors.blueAccent),
              )
            )
          )
        ],
      )
    );
  }
}