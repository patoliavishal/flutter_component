import 'package:flutter/material.dart';

class ImageGalleryPage extends StatelessWidget {
  const ImageGalleryPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ImageView & GalleryView"),
      ),
      body: Column(
        children: <Widget>[
          FadeInImage.assetNetwork(
            placeholder: 'assets/tablet.png',
            image:
                'https://static.javatpoint.com/tutorial/flutter/images/flutter-creating-android-platform-specific-code3.png',
            height: 250,
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            width: double.infinity,
            height: 250,
            child: Card(
              elevation: 5,
              shadowColor: Colors.red,
              child: Image.asset(
                'test.jpg',
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
