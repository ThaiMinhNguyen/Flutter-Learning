import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  late Quote quote;
  final Function() delete;

  QuoteCard({required this.quote ,required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      margin: EdgeInsets.all(15),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              quote.author,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            TextButton.icon(
              onPressed: delete,
              icon: Icon(Icons.delete),
              label: Text('Delete'),
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0)
                ),
                foregroundColor: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}
