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