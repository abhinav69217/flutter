import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(const MaterialApp(
      home: QuoteList(),
      debugShowCheckedModeBanner: false,
    ));

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        text:
            "The greatest glory in living lies not in never falling, but in rising every time we fall.",
        author: "Nelson Mandela"),
    Quote(
        text: "The way to get started is to quit talking and begin doing.",
        author: "Walt Disney"),
    Quote(
        text:
            "Your time is limited, so don't waste it living someone else's life.",
        author: "Steve Jobs"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes
            .map((q) => QuoteCard(
                q: q,
                delete: () {
                  setState(() {
                    quotes.remove(q);
                  });
                }))
            .toList(),
      ),
    );
  }
}
