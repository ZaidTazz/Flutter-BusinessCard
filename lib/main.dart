import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blueGrey[700],
          title: const Text(
            "Flutter Business Card",
            style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w200,
                color: Colors.white),
          ),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/myimage.jpg'),
              ),
              const Text(
                'Zayd Ahmed',
                style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'Pacifico'),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Colors.grey[500],
                    fontSize: 20.0,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                  margin: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.blueGrey[900],
                    ),
                    title: Text('+94 762 849 179',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Source Sans Pro',
                          color: Colors.blueGrey[900],
                        )),
                  )),
              Card(
                  margin: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.blueGrey[900],
                    ),
                    title: Text('zaydahmed@gmail.com',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Source Sans Pro',
                          color: Colors.blueGrey[900],
                        )),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
