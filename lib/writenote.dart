import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Writenote extends StatelessWidget {
  const Writenote({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Center(child: Text ("Write note")
        
        ),
        
        backgroundColor: Colors.black,
           
      ),
      body: Container(
        color: Colors.purpleAccent,
        child: Column(
          children: [
          Container(
              padding: EdgeInsets.all(10),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                        hintText: "Heading",
                      ),
                    ),
                  ),
        
        Container(
              padding: EdgeInsets.all(10),        
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                        hintText: "Add tytle"
                      ),
                    ),
                 ),

        Container(
          height: 370,
          width: 480,
          child: Expanded(
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  maxLength: null,
                  maxLines: 80,
                  decoration: InputDecoration (border: OutlineInputBorder  (),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Start typing here....",
                  ),
                ), 
              ),
            ), 
        ],),
      ),   
    );      
  }
}