import 'package:flutter/material.dart';

import 'display.dart';

class MySearchBar extends StatelessWidget {
  late String searchInput;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              width: 250,
              child: TextField(
                onChanged: (input) => searchInput = input,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              )),
          SizedBox(height: 15),
          ElevatedButton(
              onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ShowData(query: searchInput)),
                    )
                  },
              child: Text('Search'))
        ],
      ),
    );
  }
}
