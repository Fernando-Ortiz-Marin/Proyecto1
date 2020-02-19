import 'package:appro1/src/pages/add_page.dart';
import 'package:appro1/src/pages/delete_page.dart';
import 'package:appro1/src/pages/login_page.dart';
import 'package:appro1/src/pages/query_page.dart';
import 'package:appro1/src/pages/update_page.dart';
import 'book_page.dart';
import 'package:flutter/material.dart';

class Home_page extends StatefulWidget {
  HomeState createState() => HomeState();
}

class HomeState extends State<Home_page> {
  int _selectDrawerItem = 0;
  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return Query();
      case 1:
        return Book();
      case 2:
        return Add();
      case 3:
        return Updatee();
      case 4:
        return Delete();
      case 5:
        return Logeo();
    }
  }

  _onselectitem(int pos) {
    Navigator.of(context).pop();
    setState(() {
      _selectDrawerItem = pos;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('SIFERLU'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Fernando Ortiz'),
              accountEmail: Text('Super U'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.yellowAccent,
                child: Text(
                  'SIFERLU',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ),
            ListTile(
              title: Text('BUSQUEDA'),
              leading: Icon(Icons.loupe),
              selected: (0 == _selectDrawerItem),
              onTap: () {
                _onselectitem(0);
              },
            ),
            ListTile(
              title: Text('LISTA'),
              leading: Icon(Icons.book),
              selected: (1 == _selectDrawerItem),
              onTap: () {
                _onselectitem(1);
              },
            ),
            Divider(),
            ListTile(
              title: Text('AGREGAR'),
              leading: Icon(Icons.library_add),
              selected: (2 == _selectDrawerItem),
              onTap: () {
                _onselectitem(2);
              },
            ),
            ListTile(
              title: Text('ACTUALIZA'),
              leading: Icon(Icons.system_update_alt),
              selected: (3 == _selectDrawerItem),
              onTap: () {
                _onselectitem(3);
              },
            ),
            ListTile(
              title: Text('ELIMINAR'),
              leading: Icon(Icons.delete_sweep),
              selected: (4 == _selectDrawerItem),
              onTap: () {
                _onselectitem(4);
              },
            ),
            Divider(),
            ListTile(
              title: Text('LOGEO'),
              leading: Icon(Icons.account_circle),
              selected: (5 == _selectDrawerItem),
              onTap: () {
                _onselectitem(5);
              },
            ),
          ],
        ),
      ),
      body: _getDrawerItemWidget(_selectDrawerItem),
    );
  }
}
