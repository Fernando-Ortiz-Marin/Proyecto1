import 'package:flutter/material.dart';

class MovieHoriz extends StatelessWidget {

  final List<dynamic> peliculas;
  final controller = PageController(
    initialPage: 2,
    viewportFraction: 0.3,
  );
  final scrollDirection = Axis.horizontal;

  MovieHoriz({@required this.peliculas});

  @override
  Widget build(BuildContext context) {
    // información del ancho del dispositivo
    final _screenSize = MediaQuery.of(context).size;
    return Container(
      height: _screenSize.height * 0.2,
      child: PageView(
        pageSnapping: false,
        controller: controller,
        scrollDirection: scrollDirection,
        ///Enable physics property to provide your PageView with a
        ///custom scroll behaviour
        ///Here BouncingScrollPhysics will pull back the boundary
        ///item (first or last) if the user tries to scroll further.
        //physics: BouncingScrollPhysics(),
        children: <Widget>[
          Container(
            color: Colors.white,
            child: Card(
              color: Colors.lightBlue,
              elevation: 4,
              margin: EdgeInsets.all(24),
              child: Center(
                child: Text("Tarjeta 1"),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: Card(
              color: Colors.purpleAccent,
              elevation: 4,
              margin: EdgeInsets.all(24),
              child: Center(
                child: Text("Card 2"),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: Card(
              color: Colors.pink,
              elevation: 4,
              margin: EdgeInsets.all(24),
              child: Center(
                child: Text("Card 3"),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: Card(
              color: Colors.lightBlue,
              elevation: 4,
              margin: EdgeInsets.all(24),
              child: Center(
                child: Text("Tarjeta 1"),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: Card(
              color: Colors.purpleAccent,
              elevation: 4,
              margin: EdgeInsets.all(24),
              child: Center(
                child: Text("Card 2"),
              ),
            ),
          ),
        ],
      ),
    );
  }

  
}