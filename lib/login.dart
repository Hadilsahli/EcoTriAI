import 'package:flutter/material.dart';
import'signin.dart';
void main() {
  runApp(LoginPage());
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Connexion',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Color.fromARGB(255, 23, 159, 167), 
          centerTitle: true,// Couleur de l'app bar
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                 Color.fromARGB(255, 23, 159, 167),
                Colors.white, // Couleur de la moitié inférieure
              ],
            ),
          ),
          padding: EdgeInsets.all(20.0),
          child: LoginScreen(),
        ),
      ),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          width: 200.0,
          height: 120.0,
          alignment: Alignment.center,
          child: Icon(
            Icons.person,
            size: 90.0,
          ),
        ),
        Text(
          'Veuillez vous connecter',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20.0),
        ),
        SizedBox(height: 28.0),
        TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xFFF1F4FF), // Couleur de fond à l'intérieur du champ
            hintText: 'Email',
            prefixIcon: Icon(Icons.email),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32.0),
              borderSide: BorderSide(
                color: Color.fromARGB(255, 23, 159, 167),
                width: 1.5,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32.0),
              borderSide: BorderSide(
                color: Color.fromARGB(255, 23, 159, 167),
                width: 2.5,
              ),
            ),
          ),
        ),
        SizedBox(height: 40.0),
        TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xFFF1F4FF), // Couleur de fond à l'intérieur du champ
            hintText: 'Mot de passe',
            prefixIcon: Icon(Icons.lock),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32.0),
              borderSide: BorderSide(
                color: Color.fromARGB(255, 23, 159, 167),
                width: 1.5,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32.0),
              borderSide: BorderSide(
                color: Color.fromARGB(255, 23, 159, 167),
                width: 2.5,
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {},
              child: Text('Mot de passe oublié ?'),
              style: TextButton.styleFrom(
                foregroundColor: Color.fromARGB(255, 23, 159, 167),
              ),
            ),
          ],
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('Connexion'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 23, 159, 167),
            foregroundColor: Color.fromARGB(255, 235, 240, 240),
            side: BorderSide(color: Color.fromARGB(255, 239, 244, 245)),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Vous n'avez pas de compte ?"),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpPage()),
                  );

                // Naviguer vers la page d'inscription
              },
              child: Text('Inscrivez-vous'),
              style: TextButton.styleFrom(
                foregroundColor: Color.fromARGB(255, 23, 159, 167),
              ),
            ),
          ],
        ),
      ],
    );
  }
}