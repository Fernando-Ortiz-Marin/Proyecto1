import 'package:flutter/material.dart';

class Delete extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Card(
        
        child: Padding(
          
          padding: EdgeInsets.all(8.0),
          child: Form(
            
           // key: formkey,
            child: Column(

              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(''),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'ID:'
                  ),                
                ), 
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Nombre:'
                  ),                
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RaisedButton(
                        onPressed:(){

                        } ,
                        child: Text('Eliminar'),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}