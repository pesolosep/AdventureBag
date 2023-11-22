import 'package:flutter/material.dart';

import 'package:adventure_bag/widgets/left_drawer.dart';
import 'package:adventure_bag/screens/item_form.dart';

import 'package:adventure_bag/widgets/item_card.dart';
class MyHomePage extends StatelessWidget {
    MyHomePage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text(
                'CSGO Skin Store!',
                ),
            ),
            drawer: const LeftDrawer(),

            body: SingleChildScrollView(
                // Widget wrapper yang dapat discroll
                child: Padding(
                padding: const EdgeInsets.all(10.0), // Set padding dari halaman
                child: Column(
                    // Widget untuk menampilkan children secara vertikal
                    children: <Widget>[
                    const Padding(
                        padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                        // Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
                        child: Text(
                        'CSGO Skin Store!', // Text yang menandakan toko
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                        ),
                        ),
                    ),
                    // Grid layout
                    GridView.count(
                        // Container pada card kita.
                        primary: true,
                        padding: const EdgeInsets.all(20),
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        crossAxisCount: 3,
                        shrinkWrap: true,
                        children: items.map((BagItem item) {
                        // Iterasi untuk setiap item
                        return BagCard(item);
                        }).toList(),
                    ),
                    ],
                ),
                ),
            ),
    );
    }
}


final List<BagItem> items = [
    BagItem("See Your Orders", Icons.checklist, Colors.brown),
    BagItem("Add an Order", Icons.add_shopping_cart, Colors.green),
    BagItem("Quit Gambling", Icons.logout, Colors.red),
];