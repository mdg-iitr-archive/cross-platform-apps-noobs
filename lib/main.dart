import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FB Reaction',
      home: Scaffold(
        appBar: AppBar(
          title: Text('FB Reaction'),
        ),
        body: ManageButton(),
      ),
    );
  }
}

class LikeImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/ic_like.png');
    Image image = Image(image: assetImage);
    return Container(height: 25.0, width: 25.0, child: image);
  }
}

class FillLikeImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/ic_like_fill.png');
    Image image = Image(image: assetImage);
    return Container(height: 25.0, width: 25.0, child: image);
  }
}

class LikeText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Text txt = new Text('Like');

    return Padding(padding: EdgeInsets.only(left: 16.0), child: txt);
  }
}

class ColoredLikeText extends StatelessWidget {
  final color = const Color(0xff3b5997);
  @override
  Widget build(BuildContext context) {
    Text txt = new Text(
      'Like',
      style: TextStyle(color: color, fontWeight: FontWeight.bold),
    );

    return Padding(padding: EdgeInsets.only(left: 16.0), child: txt);
  }
}

class Like extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/like.gif');
    Image image = Image(image: assetImage);
    return Container(height: 25.0, width: 25.0, child: image);
  }
}

class Love extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/love.gif');
    Image image = Image(image: assetImage);
    return Container(height: 25.0, width: 25.0, child: image);
  }
}

class Haha extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/haha.gif');
    Image image = Image(image: assetImage);
    return Container(height: 25.0, width: 25.0, child: image);
  }
}

class Wow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/wow.gif');
    Image image = Image(image: assetImage);
    return Container(height: 25.0, width: 25.0, child: image);
  }
}

class Sad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/sad.gif');
    Image image = Image(image: assetImage);
    return Container(height: 25.0, width: 25.0, child: image);
  }
}

class Angry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/angry.gif');
    Image image = Image(image: assetImage);
    return Container(height: 25.0, width: 25.0, child: image);
  }
}

class ManageButton extends StatefulWidget {
  ManageButton({Key key}) : super(key: key);

  @override
  ManageButtonState createState() => ManageButtonState();
}

class ManageButtonState extends State<ManageButton> {
  bool _isPressed = false;
  bool _isLongPressed = false;

  @override
  Widget build(BuildContext context) {
    return Builder(
        builder: (context) => Center(
              child: Container(
                width: 175.0,
                height: 1500.0,
                alignment: Alignment(0.0, 0.0),
                child: Column(
                  children: <Widget>[
                    (!_isLongPressed
                        ? Container(width: 250.0, height: 25)
                        : Container(
                            width: 250.0,
                            child: Row(
                              children: <Widget>[
                                Like(),
                                Love(),
                                Haha(),
                                Wow(),
                                Sad(),
                                Angry()
                              ],
                            ))),
                    GestureDetector(
                        onLongPress: () => setState(() {
                              _isLongPressed = !_isLongPressed;
                              _isPressed = false;
                            }),
                        child: OutlineButton(
                          onPressed: () => setState(() {
                                _isPressed = !_isPressed;
                                _isLongPressed = false;
                              }),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              (_isPressed ? FillLikeImage() : LikeImage()),
                              (_isPressed ? ColoredLikeText() : LikeText())
                            ],
                          ),
                          borderSide: (_isPressed
                              ? BorderSide(color: Color(0xff3b5997))
                              : null),
                        )),
                  ],
                ),
              ),
            ));
  }
}
