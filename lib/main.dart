import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/pages.dart';
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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150),
        child: Padding(
          padding: const EdgeInsets.only(right: 20,left: 20),
          child: AppBar(
            title: Center(
                child: Text(
              'Afghan Fruits App',
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold, fontSize: 40),
            )),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/Fruits.png'),
                  fit: BoxFit.cover,
                ),
              ),
             
            ),
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
                      SnackBar(content: Text('About Programmer'));
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
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (c) => AboutMe()));
                      },
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
        ),
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
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Apple()));
              },
              child: Container(
                color: Colors.blue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Hero(
                      tag: 'Apple',
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/Apple.png'),
                        radius: 80,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Apple',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Pomegranate()));
              },
              child: Container(
                color: Colors.blue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Hero(
                      tag: 'Pomegranate',
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/Pomegranate.png'),
                        radius: 80,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Pomegranate',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Fig()));
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
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Orange()));
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
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Melon()));
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
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WaterMelon()));
              },
              child: Container(
                color: Colors.blue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/WaterMelon.png'),
                      radius: 80,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Water Melon',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Grape()));
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
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Berry()));
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
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cherry()));
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
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Peach()));
              },
              child: Container(
                color: Colors.blue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Hero(
                      tag: 'Peach',
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/Peach.png'),
                        radius: 80,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Peach',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
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

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {

bool isBig=false;
bool isWhite=false;
 toggleBig(){
  setState(() {
    isBig = !isBig;
  });

  toggleRed(){
    setState(() {
      isWhite = !isWhite;
    });
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Center(
            child: Text(
          'About Developer',
          style: TextStyle(color: Colors.white, fontSize: 40),
        )),
        backgroundColor: Colors.pink,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: Image.asset(
              'assets/images/me.jpg',
              fit: BoxFit.cover,
              width: 300,
              height: 200,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          AnimatedDefaultTextStyle(
            style: TextStyle(
              fontSize: isBig ? 20 : 16,
              color: isWhite ? Colors.white : Colors.black,
            ),
            duration: Duration(microseconds: 500),
            child: Text(
              '''Farhad Ebrahimzadeh
                  Flutter Developer
                  Gmail:farhadebrahimzadeh14@gmail.com
                  ''',
              // style: TextStyle(
              //     color: Colors.white,
              //     fontSize: 20,
              //     fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            toggleBig();
          }, child: Text('Toggle Big')), SizedBox(height: 20,),
          // ElevatedButton(onPressed: (){
          // toggleWhite();
          // }, child: Text('Toggle Red')),
        ],
      ),
    );
  }
}
