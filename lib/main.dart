import 'package:flutter/material.dart';
import 'quote.dart';
import 'quotecard.dart';

void main() => runApp(MaterialApp(
  home: QuoteApp(),
));


class QuoteApp extends StatefulWidget {
  @override
  State<QuoteApp> createState() => _QuoteAppState();
}

class _QuoteAppState extends State<QuoteApp> {

  List<Quote> ls  = [
    Quote(text: "This is Nemo 1", author: 'Nemo'),
    Quote(text: "This is Nemo 2", author: 'Nemo'),
    Quote(text: "This is Nemo 3", author: 'Nemo')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text(
          'Quotes',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: ls.map((quote) => QuoteCard(
          quote: quote,
          delete: () {
            setState(() {
              ls.remove(quote);
            });
          }
        )).toList(),
      ),

    );
  }
}





