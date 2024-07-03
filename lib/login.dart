import 'package:flutter/material.dart';
import 'package:jopi_library/mainscreen.dart';
class LoginScreen extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginScreen>{
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text ('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children:<Widget> [
            SizedBox(
              height: 100,
              child: Image.asset('images/logo.png'),
            ),
            TextField(
              controller: _username,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextField(
              controller: _password,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.all(25.0),
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ElevatedButton(
                onPressed: (){
                  String username = _username.text;
                  Navigator.push(context,MaterialPageRoute(builder: (context){
                    return MainScreen(username: username);
                  }));
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
