import 'package:flutter/material.dart';
import 'package:adventure_bag/models/product.dart';
import 'package:intl/intl.dart';

class DetailItemPage extends StatelessWidget {
  final Fields fields;

  DetailItemPage({super.key, required this.fields});

  final formatter = NumberFormat.decimalPattern('id');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Item'),
        // backgroundColor: LinearGradient(
        //   begin: Alignment.topRight,
        //   end: Alignment.bottomLeft,
        //   colors: [Colors.blue, Colors.red],
        // ),
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {/* ... */},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        // child: Image.network(fields.imageUrl), // Assuming `fields` has an `imageUrl`
                      ),
                      const SizedBox(height: 16),
                      Text(
                        fields.name,
                        style: const TextStyle(
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(height: 30),
              _buildDetailSection('Payment', 'Rp${formatter.format(fields.payment)}', Icons.monetization_on),
              _buildDetailSection('Jumlah', '${fields.amount}', Icons.storage),
              _buildDetailSection('Tanggal masuk', '${fields.dateAdded}', Icons.date_range),
              _buildDetailSection('Skin Type', fields.skinType, Icons.description),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetailSection(String title, String content, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: <Widget>[
          Icon(icon, color: Colors.grey),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(content),
              ],
            ),
          ),
        ],
      ),
    );
  }
}