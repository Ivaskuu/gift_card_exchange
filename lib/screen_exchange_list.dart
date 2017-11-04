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
        decoration: new BoxDecoration
        (
          //image: new DecorationImage(image: new AssetImage("res/bg2.jpg"), fit: BoxFit.cover)
        ),
        child: new ListView
        (
          scrollDirection: Axis.vertical,
          children: <Widget>
          [
            new ClosedCard(),
            new ClosedCard(),
            new ClosedCard(),
            new ClosedCard()
          ],
        ),
      ),
      drawer: navigationDrawer(),
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
            margin: new EdgeInsets.only(top: 32.0, bottom: 16.0),
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
                  child: new Text("Ivascu Adrian", style: Theme.of(context).textTheme.title),
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
}

class ClosedCard extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return new Container
    (
      margin: new EdgeInsets.symmetric(horizontal: 16.0),
      child: new SizedBox.fromSize
      (
        size: new Size.fromHeight(90.0),
        child: new Card
        (
          child: new ListTile
          (
            leading: new Image.asset("res/logo/amazon.png"),
            title: new Text("Amazon"),
            subtitle: new Text("50 €"),
            trailing: squaredButton("Exchange >"),
          )
        ),
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
            child: new Text(btnText.toUpperCase(), style: new TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            padding: new EdgeInsets.all(10.0)
          ),
        )
      )
    );
  }

  Widget roundedPillButton()
  {
    return new Container
    (
      margin: new EdgeInsets.all(8.0),
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
            child: new Text("\$50", style: new TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            padding: new EdgeInsets.symmetric(horizontal: 80.0, vertical: 20.0),
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