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
        body: Center(
            child: new OutlineButton(
                onPressed: null,
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    LikeImage(),
                    LikeText(),
                  ],
                ),
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(
                      1.0,
                    )))),
      ),
    );
  }
}

class LikeImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/ic_like.png');
    Image image = Image(image: assetImage);
    // Image thumbnail = copyResize(image, 120);
    return Container(height: 50.0, width: 50.0, child: image);
  }
}

class FillLikeImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/ic_like_fill.png');
    Image image = Image(image: assetImage);
    // Image thumbnail = copyResize(image, 120);
    return Container(height: 50.0, width: 50.0, child: image);
  }
}

class LikeText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Text txt = new Text('Like');

    return Container(child: txt);
  }
}
