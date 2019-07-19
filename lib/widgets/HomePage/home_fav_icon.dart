import 'package:flutter/material.dart';

class StatefulFavIcon extends StatefulWidget {
  const StatefulFavIcon({@required this.foreground});

  final Color foreground;

  @override
  _statefulFavIconState createState() => _statefulFavIconState();
}

class _statefulFavIconState extends State<StatefulFavIcon> {
  bool isFav;

  @override
  void initState() {
    super.initState();
    isFav = false;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isFav = !isFav;
        });
      },
      child: Icon(isFav ? Icons.favorite : Icons.favorite_border,
          color: widget.foreground),
    );
  }
}