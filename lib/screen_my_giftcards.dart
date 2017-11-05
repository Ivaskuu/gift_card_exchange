import 'package:flutter/material.dart';
import 'screen_add_giftcard.dart';
import 'screen_exchange.dart';
import 'giftcard.dart';
import 'main.dart';

ScreenMyGiftcardsState screenState;

class ScreenMyGiftcards extends StatefulWidget
{
  @override
  State createState() => new ScreenMyGiftcardsState();
}

class ScreenMyGiftcardsState extends State<ScreenMyGiftcards>
{
  @override
  Widget build(BuildContext context)
  {
    screenState = this;
    return new Scaffold
    (
      appBar: new AppBar
      (
        title: new Text("My gift cards"),
        actions: [new IconButton(icon: new Icon(Icons.search), onPressed: () => null)],
      ),
      body: new Container
      (
        child: new ListView.builder
        (
          itemBuilder: (_, int i)
          {
            return i < myGiftcards.length
              ? new GiftcardCard(myGiftcards[i], i)
              : new Container(margin: new EdgeInsets.all(36.0)); // FloatingActionButton space
          },
          itemCount: myGiftcards.length + 1,
        ),
      ),
      drawer: navigationDrawer(),
      floatingActionButton: new FloatingActionButton
      (
        onPressed: () => Navigator.of(context).push(new MaterialPageRoute(builder: (_) => new ScreenAddGiftcard())),
        child: new Icon(Icons.add),
      ),
    );
  }

  Widget navigationDrawer()
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
            onPressed: () => null,
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
                    child: new Chip(label: new Text("3"))
                  )
                ]
              )
            ),
          ),
          new FlatButton
          (
            onPressed: () => null,
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

  Widget pillButton(Widget child)
  {
    return new Container
    (
      margin: new EdgeInsets.symmetric(vertical: 8.0, horizontal: 32.0),
      child: new Material
      (
        elevation: 8.0,
        borderRadius: new BorderRadius.circular(32.0),
        child: new InkWell
        (
          onTap: () => null,
          child: new Container
          (
            decoration: new BoxDecoration
            (
              borderRadius: new BorderRadius.circular(32.0),
              gradient: new LinearGradient
              (
                colors: <Color> [new Color.fromARGB(255, 93, 107, 232), new Color.fromARGB(255, 89, 182, 191)]
              ),
            ),
            child: new Center(child: child),
            padding: new EdgeInsets.symmetric(horizontal: 48.0),
          ),
        )
      )
    );
  }
}

class GiftcardCard extends StatelessWidget
{
  final Giftcard giftcard;
  final int pos;
  GiftcardCard(this.giftcard, this.pos);

  @override
  Widget build(BuildContext context)
  {
    return new Container
    (
      margin: new EdgeInsets.symmetric(horizontal: 16.0),
      child: new Card
      (
        child: new Container
        (
          margin: new EdgeInsets.symmetric(vertical: 16.0),
          child: new Column
          (
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>
            [
              new ListTile
              (
                title: new Image.asset(giftcard.img, alignment: FractionalOffset.centerLeft),
                trailing: new Text("${giftcard.company} gift card", style: Theme.of(context).textTheme.title),
              ),
              new Container
              (
                margin: new EdgeInsets.symmetric(vertical: 16.0),
                child: new Text("XXXX-XXXX-XXXX-${giftcard.last4Digits}", style: Theme.of(context).textTheme.headline),
              ),
              new ListTile
              (
                title: new Text("\$${giftcard.value}", style: Theme.of(context).textTheme.title, textScaleFactor: 2.0,),
                trailing: squaredButton("Exchange", context),
              )
            ],
          )
        )
      )
    );
  }

  Widget squaredButton(String btnText, BuildContext context)
  {
    return new Container
    (
      child: new Material
      (
        elevation: 8.0,
        borderRadius: new BorderRadius.circular(2.0),
        child: new InkWell
        (
          onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (_) => new ScreenExchange(pos))).then((_) => screenState.setState(() => null)),
          child: new Container
          (
            decoration: new BoxDecoration
            (
              borderRadius: new BorderRadius.circular(2.0),
              gradient: new LinearGradient
              (
                colors: <Color> [new Color.fromARGB(255, 93, 107, 232), new Color.fromARGB(255, 89, 182, 191)]
              ),
            ),
            child: new Container
            (
              margin: new EdgeInsets.symmetric(horizontal: 4.0),
              child: new Text(btnText.toUpperCase(), style: new TextStyle(color: Colors.white, fontWeight: FontWeight.bold))
            ),
            padding: new EdgeInsets.all(10.0)
          ),
        )
      )
    );
  }
}