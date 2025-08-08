import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  // The screen is designed to accept an item ID.
  final String itemId;

  const DetailsScreen({super.key, required this.itemId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Displaying Details For ID:',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            Text(
              itemId, // This will display the ID passed to the widget.
              style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.indigo),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
