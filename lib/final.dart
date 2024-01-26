import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FinalScreen extends StatelessWidget {
  const FinalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Memories',style: GoogleFonts.satisfy(
                              fontSize: 32,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                              )),
        foregroundColor: Colors.black,
        backgroundColor: Colors.pink.shade100,
      ),
      backgroundColor: Colors.pink.shade100,
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          crossAxisCount: 2,
          childAspectRatio: 1.4 / 2,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[100],
              child: const Text("Add your images here"),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[200],
              child: const Text('Add your images here'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[300],
              child: const Text('Add your images here'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[400],
              child: const Text('Add your images here'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[500],
              child: const Text('Add your images here'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[600],
              child: const Text('Add your images here'),
            ),
          ],
        ));
  }
}
