import 'package:flutter/material.dart';

class ScreenExchangeList extends StatefulWidget
{
  @override
  State createState() => new ScreenExchangeListState();
}

class ScreenExchangeListState extends State<ScreenExchangeList>
{
  @override
  Widget build(BuildContext context)
  {
    return new Scaffold
    (
      appBar: new AppBar
      (
        title: new Text("Gift card exchange"),
        actions: [new IconButton(icon: new Icon(Icons.search), onPressed: () => null,)],
      ),
      //backgroundColor: Colors.pink,
      body: new Container
      (
        child: new ListView
        (
          scrollDirection: Axis.vertical,
          children: <Widget>
          [
            new GiftCard
            (
              company: "Amazon",
              value: 25.0,
              last4Digits: "7156",
              img: "res/logo/amazon.png",
            ),
            new GiftCard
            (
              company: "Apple / iTunes",
              value: 100.0,
              last4Digits: "2558",
              img: "res/logo/apple.png",
            ),
            new GiftCard
            (
              company: "Google Play",
              value: 50.0,
              last4Digits: "4516",
              img: "res/logo/google_play.png",
            ),
            new Container(margin: new EdgeInsets.all(32.0)) // FloatingActionButton space
          ],
        ),
      ),
      drawer: navigationDrawer(),
      floatingActionButton: new FloatingActionButton
      (
        onPressed: () => noSuchMethod,
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
                    child: new Chip(label: new Text("32"))
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
              leading: new Icon(Icons.swap_horiz),
              title: new Text("Exchange gift cards"),
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

class GiftCard extends StatelessWidget
{
  final String company;
  final double value;
  final String last4Digits;
  final String img;
  GiftCard({this.company, this.value, this.last4Digits, this.img});

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
                title: new Image.asset(img, alignment: FractionalOffset.centerLeft),
                trailing: new Text("$company gift card", style: Theme.of(context).textTheme.title),
              ),
              new Container
              (
                margin: new EdgeInsets.symmetric(vertical: 16.0),
                child: new Text("XXXX-XXXX-XXXX-$last4Digits", style: Theme.of(context).textTheme.headline),
              ),
              new ListTile
              (
                title: new Text("\$$value", style: Theme.of(context).textTheme.title, textScaleFactor: 2.0,),
                trailing: squaredButton("Exchange"),
              )
            ],
          )
        )
      )
    );
  }

  Widget squaredButton(String btnText)
  {
    return new Container
    (
      child: new Material
      (
        elevation: 8.0,
        borderRadius: new BorderRadius.circular(2.0),
        child: new InkWell
        (
          onTap: () => null,
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

class OpenCard extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    
  }
}