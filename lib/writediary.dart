   
import 'package:app/loginpage.dart';
import 'package:app/timepage.dart';
import 'package:app/writenote.dart';
import 'package:flutter/material.dart';
import 'loginpage.dart';
import 'calendar.dart';
import 'timepicker.dart';
import 'firebase_authen.dart';



class Writepage extends StatelessWidget {
  const Writepage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Center(child: Text ("WriteDiary")),
        backgroundColor: Colors.black,
         actions: [
           IconButton(
             onPressed: () {},
             icon: const Icon(Icons.search),
                  )
               ],
              centerTitle: true,
  
         ),
      drawer: Drawer(
      
      child:ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.purple,
            ),
            
            child: Center(
              child: Row(
                children: [
                     
                
                  Expanded(
                    child: Icon(Icons.account_circle, color: Colors.white,size: 50,),
                    flex: 2,
                  ),
                  // Expanded(
                    
                  //   flex: 6,
                  //   child: Text(
                  //     "Singin ",
                      
                      
                  //     textAlign: TextAlign.center,
                  //     style: TextStyle(
                  //       color: Colors.white,
                  //       fontSize: 16,
                  //     ),
                      
                  //   ),
                 
                  // ),
                  Container(
                    child: FlatButton(  
                child: Text('sign up', style: TextStyle(fontSize: 20.0),),  
                color: Colors.black,  
                textColor: Colors.white,  
                onPressed: () {
                  
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => loginpage()),
                  );
                    //  Navigator.push(
                    //     context,
                    //     MaterialPageRoute(builder: (context) => LoginPage()));
                         
                        
                      }, 

                    ),
                  )   
                  
                ],
              ),
            ),
          ),
          Container(
          child: Container (
            color: Colors.black,
          ),
          ),
          ListTile(
            
              title: Text("Calender"),
                leading: IconButton(
                  icon: Icon(Icons.calendar_today),
                 onPressed: () {
                  Navigator.of(context).pop("Calender" );
                },
             ),
            onTap: ()
            {
             Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                 builder: (BuildContext context) => calender()));
            },
          ),
           
         
          ListTile(
            title: Text("Time Picker"),
            leading: IconButton(
              icon: Icon(Icons.alarm),
              onPressed: () {
              },
            ),
            onTap: ()
            {
             Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                 builder: (BuildContext context) => const TimePickerNew()));
            },
          ),
          ListTile(
              title: Text("Facebook"),
                leading: IconButton(
                  icon: Icon(Icons.facebook),
                   onPressed: () {
                },
              ),
               onTap: () {
             // Navigator.of(context).pop();
             // Navigator.of(context).push(MaterialPageRoute(
                  //  builder: (BuildContext context) => contact()));
              },
          ),
          ListTile(
              title: Text("Help"),
                leading: IconButton(
                  icon: Icon(Icons.help),
                   onPressed: () {
                },
              ),
               onTap: () {
             // Navigator.of(context).pop();
             // Navigator.of(context).push(MaterialPageRoute(
                  //  builder: (BuildContext context) => contact()));
              },
          ),
          ListTile(
              title: Text("color"),
                leading: IconButton(
                  icon: Icon(Icons.color_lens),
                   onPressed: () {
                },
              ),
               onTap: () {
             // Navigator.of(context).pop();
             // Navigator.of(context).push(MaterialPageRoute(
                  //  builder: (BuildContext context) => contact()));
              },
          ),
          ListTile(
              title: Text("Exit"),
                leading: IconButton(
                  icon: Icon(Icons.exit_to_app),
                   onPressed: () {
                },
              ),
               onTap: () {
             // Navigator.of(context).pop();
             // Navigator.of(context).push(MaterialPageRoute(
                  //  builder: (BuildContext context) => contact()));
              },
          )
             
        ],
            
      ),
      
     ),
     backgroundColor: Colors.purpleAccent,
     
     body:Center(
       
      child: Padding(
        padding: const EdgeInsets.only(top: 100, ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [   
              Padding(
                padding: const EdgeInsets.only(top: 230),
                child: Image.asset("resources/image/background.png",
                    width: 392,    
                 ),
              ),         
          ],
       ),  
     ),     
  ),
     floatingActionButton: FloatingActionButton(
                onPressed: (){
                    Navigator.push(
                             context,
                            MaterialPageRoute(builder: (context) => const Writenote()),
                          );
                        },
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
      
   );  
  }
}