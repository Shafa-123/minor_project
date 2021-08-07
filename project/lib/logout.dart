import 'package:flutter/material.dart';

class Logout extends StatefulWidget {

  @override
  _LogoutState createState() => _LogoutState();
}

class _LogoutState extends State<Logout> {
  @override
  Widget build(BuildContext context)  => Scaffold(
    appBar: AppBar(
      title: Text('Logout'),
      centerTitle: true,
      backgroundColor: Colors.purple[400],
    ),
     body: Center(
        child: ListView(
          padding: EdgeInsets.all(32),
          children: [
            buildlogout(),
            const SizedBox(height: 24),
            RaisedButton(
                onPressed: (){},
                child: Text("Submit",style: TextStyle(
                color: Colors.white70,
                letterSpacing: 2.0,),
                ),
                color: Colors.purple[400],
            ),
            
          ],
        ),
      ));

  Widget buildlogout() => TextField(
        decoration: InputDecoration(
          hintText: 'Enter username/mail',
          labelText: 'Enter username/mail',
          border: OutlineInputBorder(),
        ),
        keyboardType: TextInputType.name,
        textInputAction: TextInputAction.done,
      );

}

  
