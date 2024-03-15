import 'package:flutter/material.dart';
import 'login.dart';
import 'signin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Welcome(),
      routes: {
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignUpPage(),
      },
    );
  }
}

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * 0.5),
        child: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 23, 159, 167),
                  Colors.white,
                ],
              ),
            ),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Bienvenue!",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "EcoTriAI",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Image.asset(
                    'assets/images/robott.png',
                    height: 200,
                    width: 180,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          automaticallyImplyLeading: false, // To remove the back button
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Commencer le recyclage",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Text("Se connecter"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 23, 159, 167),
                foregroundColor: Color.fromARGB(255, 235, 240, 240),
                side: BorderSide(color: Color.fromARGB(255, 239, 244, 245)),
                minimumSize: Size(300, 50),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/signup');
              },
              child: Text("Créer un nouveau compte"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 241, 243, 243),
                foregroundColor: Color.fromARGB(255, 23, 159, 167),
                side: BorderSide(color: Color.fromARGB(255, 23, 159, 167)),
                minimumSize: Size(300, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
