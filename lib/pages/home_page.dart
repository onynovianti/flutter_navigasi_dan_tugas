import 'package:flutter/cupertino.dart';
import 'package:flutter_navigasi_dan_rute/models/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        gambar: 'sugar.jpg',
        name: 'Sugar',
        price: 5000,
        description:
            'Sugar is the generic name for sweet-tasting, soluble carbohydrates, many of which are used in food.'),
    Item(
        gambar: 'salt.jpg',
        name: 'Salt',
        price: 2000,
        description:
            'Salt is a mineral composed primarily of sodium chloride (NaCl), a chemical compound belonging to the larger class of salts; salt in the form of a natural crystalline mineral is known as rock salt or halite.'),
  ];

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping List'),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListViewItem(items: items),
      ),
    );
  }
}

class ListViewItem extends StatelessWidget {
  const ListViewItem({
    Key? key,
    required this.items,
  }) : super(key: key);

  final List<Item> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(8),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/item', arguments: item);
          },
          child: CardItem(item: item),
        );
      },
    );
  }
}

class CardItem extends StatelessWidget {
  const CardItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: EdgeInsets.all(8),
        child: Row(
          children: [
            Expanded(child: Text(item.name)),
            Expanded(
              child: Text(
                item.price.toString(),
                textAlign: TextAlign.end,
              ),
            )
          ],
        ),
      ),
    );
  }
}
