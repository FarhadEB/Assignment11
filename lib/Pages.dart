import 'dart:math';

import 'package:flutter/material.dart';

// 1 Apple
class Apple extends StatelessWidget {
  const Apple({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('',
                style: TextStyle(
                  fontSize: 40,
                  color: Color.fromARGB(
                      Random().nextInt(255),
                      Random().nextInt(255),
                      Random().nextInt(255),
                      Random().nextInt(255)),
                )),
            SizedBox(
              height: 30,
            ),
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/Apple.png'),
              radius: 100,
            ),
            Container(
              color: Colors.grey,
              height: 200,
              width: 200,
              child: Text('''
                    Disease Prevention: The compounds in apples can help prevent chronic diseases such as type 2 diabetes and cardiovascular diseases.
                 - Weight Loss: Due to its high fiber content, apples can increase feelings of fullness and aid weight loss.
                '''),
            )
          ],
        ),
      ),
    );
  }
}

// 2 Pomegranate
class Pomegranate extends StatelessWidget {
  const Pomegranate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('',
                style: TextStyle(
                  fontSize: 40,
                  color: Color.fromARGB(
                      Random().nextInt(255),
                      Random().nextInt(255),
                      Random().nextInt(255),
                      Random().nextInt(255)),
                )),
            SizedBox(
              height: 30,
            ),
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/Pomegranate.png'),
              radius: 100,
            ),
            Container(
              color: Colors.grey,
              height: 200,
              width: 200,
              child: Text('''
                  Pomegranate Juice: Contains polyphenol compounds that may help reduce the risk of heart disease and certain cancers.
             - Memory Boost: Some studies suggest that pomegranate consumption can enhance memory function.
        
              '''),
            )
          ],
        ),
      ),
    );
  }
}

// 3 Peach
class Peach extends StatelessWidget {
  const Peach({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('',
                style: TextStyle(
                  fontSize: 40,
                  color: Color.fromARGB(
                      Random().nextInt(255),
                      Random().nextInt(255),
                      Random().nextInt(255),
                      Random().nextInt(255)),
                )),
            SizedBox(
              height: 30,
            ),
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/Peach.png'),
              radius: 100,
            ),
            Container(
              color: Colors.grey,
              height: 200,
              width: 200,
              child: Text('''
                    Skin Benefits: Antioxidants and vitamins in peaches can help maintain skin health and beauty.
                - Eye Health: The carotenoids in peaches contribute to eye health and vision improvement.
        
                  '''),
            )
          ],
        ),
      ),
    );
  }
}

// 4 Cherry
class Cherry extends StatelessWidget {
  const Cherry({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('',
                style: TextStyle(
                  fontSize: 40,
                  color: Color.fromARGB(
                      Random().nextInt(255),
                      Random().nextInt(255),
                      Random().nextInt(255),
                      Random().nextInt(255)),
                )),
            SizedBox(
              height: 30,
            ),
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/Cherry.png'),
              radius: 100,
            ),
            Container(
              color: Colors.grey,
              height: 200,
              width: 200,
              child: Text('''
              Sleep Quality: Cherries contain melatonin, which can help regulate sleep.
              - Pain Reduction: Some studies have shown that cherries can help reduce pain caused by inflammation in joints.
        
              '''),
            )
          ],
        ),
      ),
    );
  }
}

// 5 Fig
class Fig extends StatelessWidget {
  const Fig({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('',
                style: TextStyle(
                  fontSize: 40,
                  color: Color.fromARGB(
                      Random().nextInt(255),
                      Random().nextInt(255),
                      Random().nextInt(255),
                      Random().nextInt(255)),
                )),
            SizedBox(
              height: 30,
            ),
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/Fig1.png'),
              radius: 100,
            ),
            Container(
              color: Colors.grey,
              height: 200,
              width: 200,
              child: Text('''
                - Fiber-Rich: The fiber in figs can help improve digestion and gut health.
                - Blood Sugar Regulation: Figs can aid in controlling blood sugar levels, making them beneficial for diabetic patients.
        
              '''),
            )
          ],
        ),
      ),
    );
  }
}

// 6 Melon
class Melon extends StatelessWidget {
  const Melon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('',
                style: TextStyle(
                  fontSize: 40,
                  color: Color.fromARGB(
                      Random().nextInt(255),
                      Random().nextInt(255),
                      Random().nextInt(255),
                      Random().nextInt(255)),
                )),
            SizedBox(
              height: 30,
            ),
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/Melon.png'),
              radius: 100,
            ),
            Container(
              color: Colors.grey,
              height: 200,
              width: 200,
              child: Text('''
              - Diuretic Properties: As a natural source of water, melon can help reduce water retention in the body.
              - Heart Health: The potassium in melon can aid in regulating blood pressure and improving cardiovascular health.
        
              '''),
            )
          ],
        ),
      ),
    );
  }
}

// 7 WaterMelon
class WaterMelon extends StatelessWidget {
  const WaterMelon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('',
                style: TextStyle(
                  fontSize: 40,
                  color: Color.fromARGB(
                      Random().nextInt(255),
                      Random().nextInt(255),
                      Random().nextInt(255),
                      Random().nextInt(255)),
                )),
            SizedBox(
              height: 30,
            ),
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/WaterMelon.png'),
              radius: 100,
            ),
            Container(
              color: Colors.grey,
              height: 200,
              width: 200,
              child: Text('''
              - Body Cooling: Due to its high water content, watermelon can be refreshing in hot weather and help lower body temperature.
              - Rich in Lycopene: The lycopene in watermelon may help prevent certain types of cancer and improve heart health.
        
              '''),
            )
          ],
        ),
      ),
    );
  }
}

// 8 Grape
class Grape extends StatelessWidget {
  const Grape({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('',
                style: TextStyle(
                  fontSize: 40,
                  color: Color.fromARGB(
                      Random().nextInt(255),
                      Random().nextInt(255),
                      Random().nextInt(255),
                      Random().nextInt(255)),
                )),
            SizedBox(
              height: 30,
            ),
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/grape.png'),
              radius: 100,
            ),
            Container(
              color: Colors.grey,
              height: 200,
              width: 200,
              child: Text('''
              - Blood Health: Grapes, due to the presence of flavonoids, can improve blood circulation.
              - Preventing Premature Aging: The antioxidants in grapes may help slow down the aging 
              '''),
            )
          ],
        ),
      ),
    );
  }
}

// 9 Berry
class Berry extends StatelessWidget {
  const Berry({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('',
                style: TextStyle(
                  fontSize: 40,
                  color: Color.fromARGB(
                      Random().nextInt(255),
                      Random().nextInt(255),
                      Random().nextInt(255),
                      Random().nextInt(255)),
                )),
            SizedBox(
              height: 30,
            ),
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/Berry.png'),
              radius: 100,
            ),
            Container(
              color: Colors.grey,
              height: 200,
              width: 200,
              child: Text('''
              - Heart Health: Berries can help lower blood pressure and improve cholesterol levels.
              - Immune Boost: The vitamin C and antioxidants in berries can strengthen the immune system.
        
              '''),
            )
          ],
        ),
      ),
    );
  }
}

// 10 Orange
class Orange extends StatelessWidget {
  const Orange({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('',
                style: TextStyle(
                  fontSize: 40,
                  color: Color.fromARGB(
                      Random().nextInt(255),
                      Random().nextInt(255),
                      Random().nextInt(255),
                      Random().nextInt(255)),
                )),
            SizedBox(
              height: 30,
            ),
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/Orange.png'),
              radius: 100,
            ),
            Container(
              color: Colors.grey,
              height: 200,
              width: 200,
              child: Text('''
              - Dental Health: The vitamin C in oranges can boost the health of teeth and gums.
              - Caution: While beneficial, excessive consumption of oranges may cause heartburn in some individuals.
        
              '''),
            )
          ],
        ),
      ),
    );
  }
}
