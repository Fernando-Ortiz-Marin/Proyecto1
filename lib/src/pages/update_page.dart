import 'package:flutter/material.dart';

class Updatee extends StatelessWidget{
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
                Text('Agregar'),
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
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Genero:'
                  ),                
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Duracion:'
                  ),                
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Sinopsis:'
                  ),                
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Año de emision:'
                  ),                
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: RaisedButton(
                        onPressed:(){

                        } ,
                        child: Text('Actualiza'),
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
  /*
   void _submit(){
      if(formkey.currentState.validate()){
        formkey.currentState.save();
        print(_email);
        print(_password);
      }
    }*/
}