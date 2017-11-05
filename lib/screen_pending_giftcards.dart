import 'package:flutter/material.dart';
import 'screen_add_giftcard.dart';
import 'giftcard.dart';
import 'main.dart';

class ScreenPendingGiftcards extends StatefulWidget
{
  @override
  State createState() => new ScreenPendingGiftcardsState();
}

class ScreenPendingGiftcardsState extends State<ScreenPendingGiftcards>
{
  @override
  Widget build(BuildContext context)
  {
    return new Scaffold
    (
      body: new Container
      (
        child: pendingGiftcards.length > 0
          ? new ListView.builder
          (
            scrollDirection: Axis.vertical,
            itemBuilder: (_, int i)
            {
              return i < pendingGiftcards.length
                ? new GiftcardCard(pendingGiftcards[i], i)
                : new Container(margin: new EdgeInsets.all(36.0)); // FloatingActionButton space
            },
            itemCount: myGiftcards.length + 1,
          )
          : new Center
          (
            child: new Text("No pending giftcard."),
          )
      ),
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
                child: new Text("XXXX-XXXX-XXXX-XXXX", style: Theme.of(context).textTheme.headline),
              ),
              new ListTile
              (
                title: new Text("\$${giftcard.value}", style: Theme.of(context).textTheme.title, textScaleFactor: 2.0),
                trailing: new Text("Estimated time: 30 min")
              )
            ],
          )
        )
      )
    );
  }
}