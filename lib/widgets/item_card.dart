import 'package:flutter/material.dart';
import 'package:adventure_bag/screens/item_form.dart';

class BagItem {
  final String name;
  final IconData icon;
  final Color color;

  BagItem(this.name, this.icon, this.color);
}

class BagCard extends StatelessWidget {
  final BagItem item;
  const BagCard(this.item, {super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    return Material(
      color: item.color,
      child: InkWell(
        // Area responsive terhadap sentuhan
        onTap: () {
          // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
              content: Text("You have pressed the button ${item.name}!")));

          if (item.name == "Add an Item") {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const BagFormPage(),
              )
            );
          }
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}