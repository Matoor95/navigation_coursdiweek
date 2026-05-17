import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blueAccent, Colors.lightBlueAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              const Text('Welcome Back!',
                  style: TextStyle(color: Colors.white, fontSize: 32.0)),
              SizedBox(
                height: 10,
              ),
              Text(
                'Bonjour Monsieur le dev',
                style: TextStyle(color: Colors.white70),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                elevation: 5,
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Listes des taches',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        leading: Icon(Icons.check_circle_outline,
                            color: Colors.green),
                        title: Text('Tache 1'),
                      ),
                         ListTile(
                        leading: Icon(Icons.check_circle_outline,
                            color: Colors.orange),
                        title: Text('Tache 2'),
                      ),
                         ListTile(
                        leading: Icon(Icons.check_circle_outline,
                            color: Colors.red),
                        title: Text('Tache 3'),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
