import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Pages.dart';
import 'dart:async';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

//  Splash Screen

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => MainApp()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Center(
        child: Text(
          '''Welcome to Afghan Fruit App!
             Version 1.0.1
          ''',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Afghan Fruits App'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              switch (value) {
                case 'Share the app':
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Share the app clicked!')),
                  );
                  break;
                case 'About Me':
                Navigator.push(context, MaterialPageRoute(builder: (c)=>AboutMe()));
                  break;
                case 'Exit':
                  Navigator.of(context).pop();
                  break;
              }
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem<String>(
                  value: 'Share the app',
                  child: Text('Share the app'),
                ),
                PopupMenuItem<String>(
                  value: 'About',
                  child: Text('About'),
                ),
                PopupMenuItem<String>(
                  value: 'Exit',
                  child: Text('Exit'),
                ),
              ];
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 30,
            crossAxisSpacing: 20,
          ),
          children: [
            GestureDetector(
              onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>Apple()));
              },
              child: Container(
                color: Colors.blue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/Apple.png'),
                      radius: 80,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Apple',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
              GestureDetector(
              onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>Pomegranate()));
              },
              child: Container(
                color: Colors.blue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/Pomegranate.png'),
                      radius: 80,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Pomegranate',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
             GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>Fig()));
                
              },
              child: Container(
                color: Colors.blue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/fig1.png'),
                      radius: 80,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Fig',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
             GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>Orange()));
                
              },
              child: Container(
                color: Colors.blue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/Orange.png'),
                      radius: 80,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Orange',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
             GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>Melon()));
                
              },
              child: Container(
                color: Colors.blue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/Melon.png'),
                      radius: 80,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      ' Melon',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
             GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>WaterMelon()));
                
              },
              child: Container(
                color: Colors.blue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/WaterMelon.png'),
                      radius: 80,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Water Melon',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
             GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>Grape()));
                
              },
              child: Container(
                color: Colors.blue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/grape.png'),
                      radius: 80,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Grape',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
             GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>Berry()));
                
              },
              child: Container(
                color: Colors.blue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/berry.png'),
                      radius: 80,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Berry',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
             GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>Cherry()));
                
              },
              child: Container(
                color: Colors.blue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/Cherry.png'),
                      radius: 80,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Cherry',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
             GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>Peach()));
                
              },
              child: Container(
                color: Colors.blue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/Peach.png'),
                      radius: 80,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Peach',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('''
        Mr Farhad Mobile Developer.
        Farhadebrahimzadeh14@gmail.com.
        ''',style: TextStyle(fontSize: 40,color: Colors.black38,fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}