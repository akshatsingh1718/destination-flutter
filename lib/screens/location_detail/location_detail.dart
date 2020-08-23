import 'package:flutter/material.dart';
import './image_banner.dart';
import './text_section.dart';

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Location Detail"),
      ),
      body: Column(
        /*
        For column MainAxisAlignment is from top to bottom
        and for row left to right
        */
        mainAxisAlignment: MainAxisAlignment.start,
        /**
         * For column CrossAxisAlignment is opposite of MainAxisAlignment
         * so it is left to right and same for Row as well.
         */
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner("assets/images/dest.jpg"),
          TextSection("Summnary1", "Something"),
          TextSection("Summnary2", "Something"),
          TextSection("Summnary3", "Something"),
        ],
      ),
    );
  }
}
