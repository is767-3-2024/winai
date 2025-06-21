import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  final List<String> menuTitles = ['Profile', 'List View', 'Blank Page'];
  final List<IconData> menuIcons = [Icons.person, Icons.shopping_bag, Icons.ramen_dining];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('GridView Page'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(3, (index) {
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/${index+1}');
              },
              child: Container(
                margin: EdgeInsets.all(8.0),
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(menuIcons[index]),
                    Text(menuTitles[index]),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}