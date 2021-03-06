import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class CardSwiper extends StatelessWidget {
  
  final List<dynamic> peliculas;
  CardSwiper({@required this.peliculas });

  @override
  Widget build(BuildContext context) {

    // información del ancho del dispositivo
    final _screenSize = MediaQuery.of(context).size;

    return Container(
      
      padding: EdgeInsets.only(top:10.0),
      child: new Swiper(
          itemBuilder: (BuildContext context,int index){
            return ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: new Image.network("http://via.placeholder.com/350x150",fit: BoxFit.cover,),
            );
            //return new Image.network("http://via.placeholder.com/350x150",fit: BoxFit.fill,);
          },
          itemCount: 3,
          //pagination: new SwiperPagination(),
          //control: new SwiperControl(),
          itemWidth: _screenSize.width * 0.7,
          itemHeight: _screenSize.height * 0.5,
          layout: SwiperLayout.STACK,
        ),
    );
  }
}