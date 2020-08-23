import 'package:flutter/material.dart';
import '../../app.dart';
import '../../models/location.dart';
import '../location_detail/image_banner.dart';

class Locations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Locations',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
          children: locations
              .map((location) => Expanded(
                    child: InkWell(
                      onTap: () => _onLocationTap(context, location.id),
                      child: Stack(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            child: Image.asset(
                              location.imagePath,
                            ),
                          ),
                          Center(
                            child: Text(
                              location.name,
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ))
              .toList()

          //  GestureDetector(
          //       child: Container(
          //         padding: EdgeInsets.all(10),
          //         child: Stack(children:<Widget>[
          //           ClipRRect(
          //           borderRadius: BorderRadius.all(Radius.circular(20.0)),
          //           child: Image.asset(
          //             location.imagePath,
          //             height: 200,
          //             width: 200,
          //             fit: BoxFit.fitWidth,
          //           ),
          //         ),]
          //       )
          //       onTap: () => _onLocationTap(context, location.id),
          //     ))
          // .toList(),
          ),
    );
  }

  void _onLocationTap(BuildContext context, int locationId) {
    Navigator.pushNamed(
      context,
      LocationDetailRoute,
      arguments: {
        'id': locationId,
      },
    );
  }
}
