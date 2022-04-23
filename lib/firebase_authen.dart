import 'package:app/writediary.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:app/homepage.dart';
import 'package:app/writediary.dart';



class FirebaseAuthen extends StatefulWidget {
   static const String path ="Homepage";
  @override
  _FirebaseAuthenState createState() =>  _FirebaseAuthenState();
}

class _FirebaseAuthenState extends State<FirebaseAuthen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
   
   Future signup(String email,String password,)async{
    try{
       UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
         email: email,
         password:password,

     );
     if(userCredential.user!=null){
       print("Registration Successfully"); 

     }

    }catch(err){
      print("Error:$err");

    }
    
   }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login Screen App'),
          backgroundColor: Colors.black,
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'DIARY',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Email',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
               
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                      height: 50,
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: RaisedButton(
                        textColor: Colors.white,
                        color: Colors.blue,
                        child: Text('Login'),
                        onPressed: () {



                         signup(
                           emailController.text, passwordController.text
                           
                           );

                            Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Writepage()),
                      );

                          // print(emailController.text);
                          // print(passwordController.text);
                        },
                      )),
                ),
                 
                 FlatButton(
                  onPressed: (){
                    //forgot password screen
                  },
                  textColor: Colors.blue,
                  child: Text('Forgot Password'),
                ),
              ],
            )));
  }
}