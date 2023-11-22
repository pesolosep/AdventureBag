import 'package:flutter/material.dart';
// import 'package:jeshuamart/screens/lihatitem.dart';
import 'package:adventure_bag/screens/list_product.dart';
import 'package:adventure_bag/screens/login.dart';
import 'package:adventure_bag/screens/inventory.dart';
import 'package:adventure_bag/screens/item_form.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

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
      final request = context.watch<CookieRequest>();
    return Material(
      color: item.color,
      child: InkWell(
        // Area responsive terhadap sentuhan
        onTap: () async {
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
          else if (item.name == "Lihat Produk") {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ProductPage()));
      }
      // statement if sebelumnya
// tambahkan else if baru seperti di bawah ini
          else if (item.name == "Logout") {
        final response = await request.logout(
            // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
            "hhttps://pesolcsgoskinstore.vercel.app/auth/logout/");
        String message = response["message"];
        if (response['status']) {
          String uname = response["username"];
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("$message See You Later, $uname."),
          ));
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const LoginPage()),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("$message"),
          ));
        }
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