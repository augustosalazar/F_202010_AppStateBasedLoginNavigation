
import 'package:f_202010_simple_login_navigation/common/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
return  Scaffold(
      appBar: AppBar(
        title: Text("Home Flutter Firebase"),
        //actions: <Widget>[LogoutButton()],
      ),
      body:Center(
        child: Column(
          children: <Widget>[
             SizedBox(height: 190.0),
            Text('Home Page Flutter Firebase  Content'),
            SizedBox(height: 20.0),
            RaisedButton(
                child: Text("LOGOUT"),
                onPressed: () async {
                  await Provider.of<AuthService>(context).logout();

                  //Navigator.pushReplacementNamed(context, "/");
                })
          ],
        ),
      ),
    );
  }
}