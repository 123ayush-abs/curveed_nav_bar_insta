import 'package:flutter/material.dart';

class Shop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            "My Shop",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.share,
                color: Colors.black,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Icon(
                  Icons.play_arrow,
                  color: Colors.black,
                ),
              ),
              Icon(
                Icons.add,
                color: Colors.black,
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
