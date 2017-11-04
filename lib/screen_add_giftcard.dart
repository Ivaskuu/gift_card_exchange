import 'package:flutter/material.dart';
import 'screen_exchange_list.dart';

class ScreenAddGiftcard extends StatefulWidget
{
  @override
  State createState() => new ScreenAddGiftcardState();
}

class ScreenAddGiftcardState extends State<ScreenAddGiftcard>
{
  @override
  Widget build(BuildContext context)
  {
    return new Scaffold
    (
      appBar: new AppBar
      (
        title: new Text("Add a new Gift card"),
      ),
      body: new Column
      (
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>
        [
          new Container
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
                    new Row
                    (
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>
                      [
                        new Expanded
                        (
                          child: new Container
                          (
                            margin: new EdgeInsets.only(left: 16.0, right: 16.0),
                            child: new TextField
                            (
                              decoration: new InputDecoration
                              (
                                hintText: "Company name",
                              ),
                            )
                          )
                        ),
                        new Container
                        (
                          margin: new EdgeInsets.only(right: 16.0),
                          child: new Text("gift card", style: Theme.of(context).textTheme.title)
                        )
                      ]
                    ),
                    new Container
                    (
                      margin: new EdgeInsets.symmetric(horizontal: 16.0),
                      child: new TextField
                      (
                        decoration: new InputDecoration
                        (
                          hintText: "Gift card number",
                        ),
                      ),
                    ),
                    new Row
                    (
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>
                      [
                        new Container
                        (
                          margin: new EdgeInsets.only(left: 16.0),
                          child: new Text("\$", style: Theme.of(context).textTheme.title, textScaleFactor: 2.0)
                        ),
                        new Expanded
                        (
                          child: new Container
                          (
                            margin: new EdgeInsets.only(left: 16.0, right: 176.0),
                            child: new TextField
                            (
                              style: Theme.of(context).textTheme.title.copyWith(fontSize: 32.0),
                            )
                          )
                        )
                      ]
                    )
                  ],
                )
              )
            )
          ),
          new Container
          (
            margin: new EdgeInsets.only(top: 16.0),
            child: pillButton
            (
              new Container
              (
                margin: new EdgeInsets.all(16.0),
                child: new Text("Add", style: Theme.of(context).textTheme.title.copyWith(color: Colors.white)),
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