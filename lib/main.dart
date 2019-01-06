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

class LikeImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/ic_like_fill.png');
    Image image = Image(image: assetImage);
    return Container(height: 25.0, width: 25.0, child: image);
  }
}

class LoveImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/love2.png');
    Image image = Image(image: assetImage);
    return Container(height: 25.0, width: 25.0, child: image);
  }
}

class HahaImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/haha2.png');
    Image image = Image(image: assetImage);
    return Container(height: 25.0, width: 25.0, child: image);
  }
}

class WowImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/wow2.png');
    Image image = Image(image: assetImage);
    return Container(height: 25.0, width: 25.0, child: image);
  }
}

class SadImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/sad2.png');
    Image image = Image(image: assetImage);
    return Container(height: 25.0, width: 25.0, child: image);
  }
}

class AngryImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/angry2.png');
    Image image = Image(image: assetImage);
    return Container(height: 25.0, width: 25.0, child: image);
  }
}

class LoveText extends StatelessWidget {
  final color = const Color(0xddff0000);
  @override
  Widget build(BuildContext context) {
    Text txt = new Text(
      'Love',
      style: TextStyle(color: color, fontWeight: FontWeight.bold),
    );

    return Padding(padding: EdgeInsets.only(left: 16.0), child: txt);
  }
}

class HahaText extends StatelessWidget {
  final color = const Color(0xffffdb6b);
  @override
  Widget build(BuildContext context) {
    Text txt = new Text(
      'Haha',
      style: TextStyle(color: color, fontWeight: FontWeight.bold),
    );

    return Padding(padding: EdgeInsets.only(left: 16.0), child: txt);
  }
}

class WowText extends StatelessWidget {
  final color = const Color(0xffffdb6b);
  @override
  Widget build(BuildContext context) {
    Text txt = new Text(
      'Wow',
      style: TextStyle(color: color, fontWeight: FontWeight.bold),
    );

    return Padding(padding: EdgeInsets.only(left: 16.0), child: txt);
  }
}

class SadText extends StatelessWidget {
  final color = const Color(0xffffdb6b);
  @override
  Widget build(BuildContext context) {
    Text txt = new Text(
      'Sad',
      style: TextStyle(color: color, fontWeight: FontWeight.bold),
    );

    return Padding(padding: EdgeInsets.only(left: 16.0), child: txt);
  }
}

class AngryText extends StatelessWidget {
  final color = const Color(0xddff0000);
  @override
  Widget build(BuildContext context) {
    Text txt = new Text(
      'Angry',
      style: TextStyle(color: color, fontWeight: FontWeight.bold),
    );

    return Padding(padding: EdgeInsets.only(left: 16.0), child: txt);
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
  int a = 0;

  Widget selectImg(bool isPressed, int a) {
    if (isPressed) {
      if (a == 0)
        return LikeImg();
      else if (a == 1)
        return LoveImg();
      else if (a == 2)
        return HahaImg();
      else if (a == 3)
        return WowImg();
      else if (a == 4)
        return SadImg();
      else
        return AngryImg();
    } else
      return LikeImage();
  }

  Widget selectingText(bool isPressed, int a) {
    if (isPressed) {
      if (a == 0)
        return ColoredLikeText();
      else if (a == 1)
        return LoveText();
      else if (a == 2)
        return HahaText();
      else if (a == 3)
        return WowText();
      else if (a == 4)
        return SadText();
      else
        return AngryText();
    } else
      return LikeText();
  }

  Color getColor(bool isPressed, int a) {
    if (isPressed) {
      if (a == 0)
        return Color(0xff3b5997);
      else if (a == 1)
        return Color(0xddff0000);
      else if (a == 2)
        return Color(0xffffdb6b);
      else if (a == 3)
        return Color(0xffffdb6b);
      else if (a == 4)
        return Color(0xffffdb6b);
      else
        return Color(0xddff0000);
    } else
      return Color(null);
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
        builder: (context) => Center(
              child: Container(
                width: 175.0,
                alignment: Alignment(0.0, 0.0),
                child: Column(
                  children: <Widget>[
                    (!_isLongPressed
                        ? Container(width: 250.0, height: 25)
                        : Container(
                            width: 250.0,
                            child: Row(
                              children: <Widget>[
                                GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _isPressed = !_isPressed;
                                        _isLongPressed = false;
                                        a = 0;
                                      });
                                    },
                                    child: Like()),
                                GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _isPressed = !_isPressed;
                                        _isLongPressed = false;
                                        a = 1;
                                      });
                                    },
                                    child: Love()),
                                GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _isPressed = !_isPressed;
                                        _isLongPressed = false;
                                        a = 2;
                                      });
                                    },
                                    child: Haha()),
                                GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _isPressed = !_isPressed;
                                        _isLongPressed = false;
                                        a = 3;
                                      });
                                    },
                                    child: Wow()),
                                GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _isPressed = !_isPressed;
                                        _isLongPressed = false;
                                        a = 4;
                                      });
                                    },
                                    child: Sad()),
                                GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _isPressed = !_isPressed;
                                        _isLongPressed = false;
                                        a = 5;
                                      });
                                    },
                                    child: Angry()),
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
                                a = 0;
                              }),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              (selectImg(_isPressed, a)),
                              (selectingText(_isPressed, a))
                            ],
                          ),
                          borderSide: (_isPressed
                              ? BorderSide(color: getColor(_isPressed, a))
                              : null),
                        )),
                  ],
                ),
              ),
            ));
  }
}
