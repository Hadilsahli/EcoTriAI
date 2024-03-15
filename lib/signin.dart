import 'package:flutter/material.dart';
import'login.dart';
void main() {
  runApp(SignUpPage());
}

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Inscription',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Color.fromARGB(255, 23, 159, 167),
          centerTitle: true, // Couleur de l'app bar
        ),
        body: SignUpScreen(),
      ),
    );
  }
}

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: 120.0,
            height: 80.0,
            child: Icon(
              Icons.person,
              size: 90.0,
            ),
          ),
          Text(
            'Commençons',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20.0),
          ),
          TextFormField(
            decoration: InputDecoration(
              filled: true,
              fillColor:
                  Color(0xFFF1F4FF), // Couleur de fond à l'intérieur du champ
              hintText: 'Nom',
              prefixIcon: Icon(Icons.person), // Icône pour le champ Email

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
          SizedBox(height: 20.0),
          TextFormField(
            decoration: InputDecoration(
              filled: true,
              fillColor:
                  Color(0xFFF1F4FF), // Couleur de fond à l'intérieur du champ
              hintText: 'Email',
              prefixIcon: Icon(Icons.email), // Icône pour le champ Email
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
          SizedBox(height: 20.0),
          TextFormField(
            decoration: InputDecoration(
              filled: true,
              fillColor:
                  Color(0xFFF1F4FF), // Couleur de fond à l'intérieur du champ
              hintText: 'Mot de passe',
              prefixIcon: Icon(Icons.lock), // Icône pour le champ Email
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
          SizedBox(height: 20.0),
          TextFormField(
            decoration: InputDecoration(
              filled: true,
              fillColor:
                  Color(0xFFF1F4FF), // Couleur de fond à l'intérieur du champ
              hintText: 'Confirmer le mot de passe',
              prefixIcon: Icon(Icons.lock), // Icône pour le champ Email
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
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {},
            child: Text('Inscription'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 23, 159, 167),
              foregroundColor: Color.fromARGB(255, 235, 240, 240),
              side: BorderSide(color: Color.fromARGB(255, 239, 244, 245)),
            ),
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Vous avez déjà un compte ?"),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );

                  // Rediriger vers la page de connexion en utilisant la fonction de login_screen.dart
                },
                child: Text('Connectez-vous'),
                style: TextButton.styleFrom(
                  foregroundColor: Color.fromARGB(255, 23, 159, 167),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}