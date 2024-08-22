// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SearchView extends StatelessWidget {
  SearchView({super.key});
  late String cityName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search City'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 0, 12, 120),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              hintText: 'Enter City Name',
              suffixIcon: Icon(Icons.search),
            ),
            onChanged: (textInput) => cityName = textInput,
          ),
        ),
      ),
    );
  }
}
