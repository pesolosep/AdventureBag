import 'package:flutter/material.dart';
import 'package:adventure_bag/screens/inventory.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Provider(
            create: (_) {
                CookieRequest request = CookieRequest();
                return request;
            },
            child: MaterialApp(
                title: 'Adventure Bag!',
                theme: ThemeData(
                    colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
                    useMaterial3: true,
                ),
                home: LoginPage()),
            ),
        ;
    }
}
