
import 'package:flutter/material.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('사진첩'),
      ),
      body: PageView(
        children: [
          Container(
            color: Colors.red,
            child: Center(
              child: Text('1면'),
            )
          ),
          Container(
            color: Colors.black,
              child: Center(
                child: Text('2면'),
              )
          ),
          Container(
            color: Colors.yellow,
              child: Center(
                child: Text('3면'),
              )
          )
        ]
      ),
    );
  }
}
