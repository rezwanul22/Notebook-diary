import 'package:app/firebase_authen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth_platform_interface/firebase_auth_platform_interface.dart';
// import 'loginpage.dart';
//import 'writediary.dart';
import 'firebase_authen.dart';

void main(){
  init();
  runApp(Homepage());
}

Future init ()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}

class Homepage extends StatelessWidget {
  const Homepage({ Key? key }) : super(key: key);

  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      
      body:Center(
        
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             Padding(
               padding: const EdgeInsets.only(bottom: 54.0),
               child: Padding(
                 padding: const EdgeInsets.only(top: 100.0),
                 child: Text( "Diary",
                 style: TextStyle(
                   fontFamily: 'source',
                   fontSize: 40.0,
                   fontWeight: FontWeight.bold,
                   color: Colors.white,
                   
                 ),),   
               ),
             ),
             
                Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: Text("A collection of notes from your life.",
                  overflow: TextOverflow.ellipsis, 
                  style: TextStyle(
                    fontFamily: 'Lobster',
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,   
                    ),),
                  ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: Image.asset('resources/image/unnamed.png', height: 200, width: 200,),

                      ),

                SizedBox(
                  height: 40, 
                  width: 300, 
                  child:RaisedButton(
                  
                    color: Colors.white,
                     onPressed: (){

                       Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FirebaseAuthen()),
                      );
                     },

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)

                      ),
                      child: Text(
                       "Get Started"
                      ),
                     
                  
                   ),

                    
                  ),

            ],
            
          ),
        ),
      ) ,
      
    );
  }
}