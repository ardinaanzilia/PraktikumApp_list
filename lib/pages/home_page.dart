import 'package:flutter/material.dart';
import 'package:app_belanja/models/item.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item('rainbow cupcake', 75000, 'assets/download (1).jpg'),
    Item('sprinkle cupcake', 80000, 'assets/download.jpg'),
    Item('chocolate cupcake', 60000, 'assets/images (1).jpg'),
    Item('cream cupcake', 60000, 'assets/images (2).jpg'),
    Item('Strawbery cupcake', 60000, 'assets/images (3).jpg'),
    Item('Red velvet cupcake', 65000, 'assets/images.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nur Ardina Anzilia Putri | 362358302044'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/item',
                  arguments: items[index],
                );
              },
              child: ListTile(
                title: Text(items[index].name),
                subtitle: Text('Rp ${items[index].price}'),
              ),
            ),
          );
        },
      ),
    );
  }
}
