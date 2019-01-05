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

class ManageButton extends StatefulWidget {
  ManageButton({Key key}) : super(key: key);

  @override
  ManageButtonState createState() => ManageButtonState();
}

class ManageButtonState extends State<ManageButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 128.0, right: 128.0),
              child: OutlineButton(
                onPressed: () => setState(() {
                      _isPressed = (_isPressed) ? false : true;
                    }),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    (_isPressed ? FillLikeImage() : LikeImage()),
                    (_isPressed ? ColoredLikeText() : LikeText())
                  ],
                ),
                borderSide:
                    (_isPressed ? BorderSide(color: Color(0xff3b5997)) : null),
              ),
            ),
          ),
    );
  }
}
