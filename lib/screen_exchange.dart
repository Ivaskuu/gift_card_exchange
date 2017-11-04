import 'package:flutter/material.dart';
import 'screen_add_giftcard.dart';
import 'dart:async';

class ScreenExchange extends StatefulWidget
{
  @override
  State createState() => new ScreenExchangeState();
}

class ScreenExchangeState extends State<ScreenExchange>
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
      body: new Container
      (
        child: new ListView
        (
          scrollDirection: Axis.vertical,
          children: <Widget>
          [
            new GiftCard
            (
              company: "Apple / iTunes",
              value: 25.0,
              img: "res/logo/apple.png",
            ),
            new GiftCard
            (
              company: "Google Play",
              value: 25.0,
              img: "res/logo/google_play.png",
            ),
            new GiftCard
            (
              company: "Starbucks",
              value: 25.0,
              img: "res/logo/starbucks.png",
            ),
            new GiftCard
            (
              company: "Rayban",
              value: 25.0,
              img: "res/logo/rayban.png",
            ),
            new GiftCard
            (
              company: "Domino's pizza",
              value: 25.0,
              img: "res/logo/dominos.jpg",
            ),
            new GiftCard
            (
              company: "OVS",
              value: 25.0,
              img: "res/logo/ovs.jpg",
            ),
            new GiftCard
            (
              company: "H&M",
              value: 25.0,
              img: "res/logo/hm.png",
            ),
            new GiftCard
            (
              company: "Xbox",
              value: 25.0,
              img: "res/logo/xbox.png",
            ),
            new GiftCard
            (
              company: "Steam",
              value: 25.0,
              img: "res/logo/steam.png",
            ),
          ],
        ),
      ),
    );
  }
}

class GiftCard extends StatelessWidget
{
  final String company;
  final double value;
  final String img;
  GiftCard({this.company, this.value, this.img});

  @override
  Widget build(BuildContext context)
  {
    return new Container
    (
      child: new Card
      (
        child: new ListTile
        (
          leading: new Image.asset(img, alignment: FractionalOffset.centerLeft),
          title: new Text(company),
          subtitle: new Text("\$ ${value}"),
          trailing: squaredButton("EXCHANGE", context, () => showConfirmDialog(context, company))
        )
      )
    );
  }

  Widget squaredButton(String btnText, BuildContext context, VoidCallback onclick)
  {
    return new Container
    (
      child: new Material
      (
        elevation: 8.0,
        borderRadius: new BorderRadius.circular(2.0),
        child: new InkWell
        (
          onTap: () => onclick(),
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
              child: new Text(btnText.toUpperCase(), style: new TextStyle(color: Colors.white, fontWeight: FontWeight.bold), textAlign: TextAlign.center)
            ),
            padding: new EdgeInsets.all(10.0)
          ),
        )
      )
    );
  }
  
  void showConfirmDialog(BuildContext context, String companyName)
  {
    showDialog
    (
      context: context,
      child: new AlertDialog
      (
        title: new Text("$companyName gift card"),
        content: new Text("By clicking the 'Exchange' button you will exchange your Amazon gift card into a Starbucks gift card"),
        actions: <Widget>
        [
          new FlatButton
          (
            onPressed: () => Navigator.pop(context),
            child: new Text("CANCEL"),
          ),
          new FlatButton
          (
            onPressed: () { Navigator.pop(context); showLoadingDialog(context); },
            child: new Text("EXCHANGE"),
          )
        ],
      )
    );
  }

  void showLoadingDialog(BuildContext context)
  {
    showDialog
    (
      barrierDismissible: false,
      context: context,
      child: new SimpleDialog
      (
        children: <Widget>
        [
          new Container
          (
            margin: new EdgeInsets.symmetric(vertical: 16.0),
            child: new Row
            (
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>
              [
                new CircularProgressIndicator(),
                new Text("Exchanging your gift cards ...")
              ],
            )
          )
        ],
      )
    );
    new Future.delayed(new Duration(seconds: 3), () {
      Navigator.pop(context);
      showExchangedDialog(context);
    });
  }

  void showExchangedDialog(BuildContext context)
  {
    showDialog
    (
      context: context,
      child: new SimpleDialog
      (
        contentPadding: new EdgeInsets.all(0.0),
        children: <Widget>
        [
          new Container
          (
            color: Colors.green,
            child: new Icon(Icons.done, color: Colors.white, size: 128.0),
          ),
          new Container
          (
            margin: new EdgeInsets.all(32.0),
            child: new Text("Gift cards exchanged !", style: Theme.of(context).textTheme.title.copyWith(color: Colors.green), textAlign: TextAlign.center)
          ),
          new Container
          (
            margin: new EdgeInsets.symmetric(horizontal: 32.0),
            child: new Text("You will receive a notification when your gift card is ready.", textAlign: TextAlign.center)
          ),
          new Container
          (
            margin: new EdgeInsets.all(32.0),
            child: squaredButton("RETURN TO HOME", context, () { Navigator.pop(context); Navigator.pop(context); })
          )
        ],
      )
    );
  }
}