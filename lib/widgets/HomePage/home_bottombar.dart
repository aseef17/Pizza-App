import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWeight = MediaQuery.of(context).size.width;

    final _size = screenWeight * 0.12;
    final _padding = screenWeight * 0.025;

    return BottomAppBar(
      color: Colors.transparent,
      elevation: 0.0,
      child: Padding(
        padding: EdgeInsets.only(
            top: screenHeight * 0.005, bottom: screenHeight * 0.010),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
                height: _size,
                width: _size,
                padding: EdgeInsets.all(_padding / 2),
                child: CachedNetworkImage(
                  imageUrl:
                      "https://firebasestorage.googleapis.com/v0/b/fir-search-56fee.appspot.com/o/profile_images%2Faseef.png?alt=media&token=061d464e-6565-4d41-84c3-d70bd675379c",
                  placeholder: (context, url) => Platform.isAndroid
                      ? CircularProgressIndicator()
                      : CupertinoActivityIndicator(),
                  errorWidget: (context, url, error) => new Icon(Icons.error),
                )),
            Container(
              height: _size,
              width: _size,
              padding: EdgeInsets.all(_padding),
              child: Image.asset("assets/home_icon.png", fit: BoxFit.contain),
            ),
            Container(
              height: _size,
              width: _size,
              padding: EdgeInsets.all(_padding),
              child: Image.asset("assets/search_icon.png", fit: BoxFit.contain),
            ),
            Container(
              height: _size,
              width: _size,
              padding: EdgeInsets.all(_padding/0.9),
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(50)),
              child: Image.asset("assets/bag_icon.png", fit: BoxFit.contain),
            ),
          ],
        ),
      ),
    );
  }
}
