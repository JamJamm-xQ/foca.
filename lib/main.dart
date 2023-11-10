import 'package:flutter/material.dart';

import 'Screens/home.dart';
import 'Screens/settings.dart';
import 'Screens/timer.dart';

void main() {
  runApp(const Foca());
}

class Foca extends StatefulWidget {
  const Foca({Key? key}) : super(key: key);

  @override
  State<Foca> createState() => _FocaState();
}

class _FocaState extends State<Foca> {
  int _currentIndex = 0;
  final List _screens = [Home(), Timer(), Settings()];

  void _updateIndex(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          /*leading: GestureDetector(
            child: Icon(
              Icons.more_vert,
              size: 26.0,
            ),
            onTap: () {},
          ),*/
          title: Text('foca.'),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.add,
                  size: 26.0,
                ),
              ),
            )
          ],
          backgroundColor: Colors.black,
        ),
        body: _screens[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            onTap: _updateIndex,
            selectedItemColor: Colors.blue[700],
            selectedFontSize: 13,
            unselectedFontSize: 13,
            iconSize: 30,
            backgroundColor: Colors.black,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
                backgroundColor: Colors.blue,
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings_outlined), label: 'Settngs')
            ]),
      ),
    );
  }
}

/*Scaffold(
        backgroundColor: Colors.black,
        /* appBar: AppBar(
          title: Text(widget.title),
        ),*/
        body: Home()
        /*Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), */ // This trailing comma makes auto-formatting nicer for build methods.
        ); */
