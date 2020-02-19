import 'package:flutter/material.dart';

class Book extends StatelessWidget {
  Container MyArticles(String imageval, String heading, String subHeading) {
    return Container(
      width: 160.0,
      child: Card(
        child: Wrap(
          children: <Widget>[
            Image.network(imageval),
            ListTile(
              title: Text(heading),
              subtitle: Text(subHeading),
            ),
          ],
        ),
      ),
    );
  }

  Container MyArticles2(String imageval, String heading, String subHeading) {
    return Container(
      width: 160.0,
      child: Card(
        child: Wrap(
          children: <Widget>[
            Image.network(imageval),
            ListTile(
              title: Text(heading),
              subtitle: Text(subHeading),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Mira nuestros Animess',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: 

      Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 300,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            MyArticles(
                "https://honeysanime.com/wp-content/uploads/2015/12/Zettai-Junshu-Kyousei-Kozukuri-Kyokashou-dvd-300x424.jpg",
                "Zettai Junshu",
                "Kyousei Kozukuri Kyokashou!!"),
            MyArticles(
                "https://honeysanime.com/wp-content/uploads/2015/12/Shoujo-Senki-Soul-Eater-dvd-300x425.jpg",
                "Shoujo Senki Soul Eater",
                ""),
            MyArticles(
                "https://honeysanime.com/wp-content/uploads/2016/08/Kuroinu-Kedakaki-Seijo-wa-Hakudaku-ni-Somaru-dvd-300x367.jpg",
                "Kuroinu",
                "Kedakaki Seijo wa Hakudaku ni Somaru"),
            MyArticles(
                "https://honeysanime.com/wp-content/uploads/2015/12/Taimanin-Asagi-dvd-300x428.jpg",
                "Taimanin Asagi",
                ""),
            MyArticles(
                "https://honeysanime.com/wp-content/uploads/2015/12/STARLESS-21st-Century-nymphomaniacs-dvd-300x463.jpg",
                "Starless: 21st Century Nymphomaniacs",
                ""),
            MyArticles(
                "https://honeysanime.com/wp-content/uploads/2016/12/Dropout-dvd-300x414.jpg",
                "Dropout",
                ""),    
            MyArticles(
                "https://honeysanime.com/wp-content/uploads/2016/12/Kimi-no-Mana-wa-Rina-Witch-dvd-300x424.jpg",
                "Kimi no Mana wa Rina Witch",
                ""),  
            MyArticles(
                "https://honeysanime.com/wp-content/uploads/2016/06/Mankitsu-Happening-dvd.jpg",
                "Mankitsu Happening",
                ""),  
            MyArticles(
                "https://honeysanime.com/wp-content/uploads/2016/05/Eroge-H-mo-Game-mo-Kaihatsu-Zanmai-dvd-300x427.jpg",
                "Eroge! H mo Game mo Kaihatsu Zanmai",
                ""),  
            MyArticles(
                "https://honeysanime.com/wp-content/uploads/2016/05/Oni-Chichi-Capture-560x315.jpg",
                "Oni Chichi",
                ""),  
          ],
        ),
      ),
    );
  }
}
