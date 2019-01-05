import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void _showSnackbar(BuildContext context) {
    Scaffold.of(context)
        .showSnackBar(new SnackBar(content: const Text('Button Clicked')));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FB Reaction',
      home: Scaffold(
        appBar: AppBar(
          title: Text('FB Reaction'),
        ),
        body: Builder(
          builder: (context) => Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 128.0, right: 128.0),
                  child: OutlineButton(
                      onPressed: () => _showSnackbar(context),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[LikeImage(), LikeText()],
                      )),
                ),
              ),
        ),
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
