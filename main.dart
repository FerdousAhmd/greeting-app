import 'package:flutter/material.dart';

void main(){
  runApp(GreetingApp());
}
class GreetingApp extends StatelessWidget {
  const GreetingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Greeting App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello World!',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),

            SizedBox(height: 5,),

            Text('Welcome to Flutter!',
              style: TextStyle(
                  fontSize: 25
              ),
            ),

            SizedBox(height: 12,),

            Image.asset('assets/images/Flutter.jpg'),

            SizedBox(height: 16,),

            ElevatedButton(onPressed: () {
              print('Button Pressed!');
            },
              child: Text(
                'Press Me',
                style: TextStyle(color: Colors.green),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
