import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounterX() {
    _counter++;

    print(_counter % 10);
    if (_counter % 10 == 0 ) {
      setState(() {
        
      });
    } 
  }

  @override
  void initState() {
    super.initState();
    _counter = 888;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: Icon(Icons.add_alert),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('This is an alert'),
                  action: SnackBarAction(
                    label: 'Okay',
                    onPressed: () {
                      Navigator.pushNamed(context, '/details');
                    },
                  ),
                ),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.forward),
            onPressed: () {
              Navigator.pushNamed(context, '/details');
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 50.0),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.red.withAlpha(90),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: SizedBox(
                height: 200.0,
                child: Image.asset(
                  'assets/images/AvatarMe.jpg',
                ),
              ),
            ),
            Text('You xx have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyButton("กดฉัน"),
                MyButton("กดเธอ"),
                MyButton("กด............."),
              ],
            ),
            MyRatingBar(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounterX,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final String buttonText;
  const MyButton(this.buttonText, {super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(buttonText),
      onPressed: () {},
    );
  }
}

class MyRatingBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(Icons.star),
        Icon(Icons.star_border_outlined),
        Icon(Icons.star_border_outlined),
        Icon(Icons.star_border_outlined),
        Icon(Icons.star_border_outlined),
      ],

    );
  }
}